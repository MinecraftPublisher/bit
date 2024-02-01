let replace_mov = true

type constable = { [key: string]: string }
type functable = {
    [key: string]: {
        name: string
        args: string[]
        argcount: number
        code: string
    }
}

const global_functions: functable = {}
const global_table: constable = {}

function assemble(code: string, nostart = false, expronly = false): string {
    let binary = nostart ? '' : `------------------------\n| Bit assembler output |\n| v2                   |\n------------------------\n`
    let pointer = 0

    function skipWhitespace() {
        if (!(code[pointer] == ' ' || code[pointer] == '\n' || code[pointer] == '\t')) return
        while (code[pointer] == ' ' || code[pointer] == '\n' || code[pointer] == '\t') {
            pointer++
        }
    }

    const stub = () => code.substring(pointer)
    const startsWith = (comp) => {
        if (stub().toUpperCase().startsWith(comp.toUpperCase())) {
            pointer += comp.length
            return true
        } else return false
    }

    const printPosition = () => {
        console.log(`At line ${code.substring(0, pointer).split('\n').length} total index ${pointer + 1}`)
        console.log(`Stub: \`\`\`${stub()}\`\`\` `);
        console.trace('Error trace:')
        process.exit(1)
    }

    const indent = (e) => e.split('\n').map(e => `    ${e}`).join('\n')

    const readName = () => {
        let name = (stub().match(/[a-zA-Z_][a-zA-Z_0-9]*/g) ?? [''])[0]
        if (name === '') {
            console.log(`Invalid constant value name ${stub().split(' ')[0]}. Should follow pattern [a-zA-Z_][a-zA-Z_0-9]*`)
            printPosition()
        }
        pointer += name.length

        return name
    }

    const readExpression = (readonly = false) => {
        skipWhitespace()
        while (startsWith(',')) skipWhitespace()

        if (startsWith('r')) { // register address
            let letter = code[pointer++]
            const letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
            if (letters.includes(letter)) {
                let bin_rep = letters.indexOf(letter).toString(2)
                if (bin_rep.length < 28) bin_rep = new Array(28 - bin_rep.length).fill('0').join('') + bin_rep

                skipWhitespace()
                while (startsWith(',')) skipWhitespace()

                if (readonly) return `r${letter}`
                return `VALUE IN REGISTER r${letter}\n${indent(`01 ${bin_rep}`)}`
            } else {
                console.log(`ERROR: Invalid register name: ${letter}`)
                printPosition()
            }
        } else if (startsWith('m')) { // memory address
            let letter = code[pointer++]
            const letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
            if (letters.includes(letter)) {
                let bin_rep = letters.indexOf(letter).toString(2)
                if (bin_rep.length < 28) bin_rep = new Array(28 - bin_rep.length).fill('0').join('') + bin_rep

                skipWhitespace()
                while (startsWith(',')) skipWhitespace()

                if (readonly) return `m${letter}`
                return `MEMORY ADDRESS IN REGISTER r${letter}\n${indent(`00 ${bin_rep}`)}`
            } else {
                console.log(`ERROR: Invalid register name for memory address: ${letter}`)
                printPosition()
            }
        } else if (startsWith('$')) { // constant value
            let num_base = ''
            while ('0123456789'.includes(code[pointer])) {
                num_base += code[pointer++]
            }
            let parsed = parseInt(num_base)
            if (isNaN(parsed)) {
                console.log(`ERROR: Constant value ${num_base} not a number`)
                printPosition()
            }

            let bin = parsed.toString(2)
            if (bin.length > 29) {
                console.log(`ERROR: Constant value ${num_base} has a binary form longer than 29 bits, Cosnsider breaking it down into multiple instructions.`)
                printPosition()
            }

            if (bin.length < 29) bin = new Array(29 - bin.length).fill('0').join('') + bin

            skipWhitespace()
            while (startsWith(',')) skipWhitespace()

            if (readonly) return `$${num_base}`
            return `CONSTANT VALUE\n${indent(`1 ${bin}`)}`
        } else if (startsWith('!')) { // macro value
            let name = readName()

            if (!global_table[name]) {
                console.log(`Could not find constant named ${name} in global constant table. Note that constants cannot be used before declaration.`)
                printPosition()
            }

            skipWhitespace()
            while (startsWith(',')) skipWhitespace()

            if (readonly) return `!${name}`
            return assemble(global_table[name], true, true)
        }

        console.log('..... Unknown expression type. Could not detect any valid expression.')
        printPosition()
        return ''
    }

    if (expronly) {
        return readExpression()
    }

    while (pointer < code.length) {
        skipWhitespace()

        // console.log(chalk.green('----------------------------------------------'))
        // console.log(chalk.red(code))
        // console.log(chalk.green('----------------------------------------------\n\n'))

        if (startsWith('#')) { // read comment
            while (code[pointer] != '\n') pointer++
        } else if (startsWith('hlt') || startsWith('halt')) { // halt program
            pointer += startsWith('hlt') ? 3 : 4

            binary += `HALT\n    00 00000000000000000000000000000000000000000000000000000000000000` + '\n'
        } else if (startsWith('mov') || startsWith('move')) { // move instruction
            skipWhitespace()

            if (replace_mov) {
                // should be replaced using assembler
                let left = readExpression(true)
                let right = readExpression(true)

                binary += 'MOV macro replacement' + '\n'
                binary += indent(assemble(`
                math nand ${right}, $0
                math nand ${right}, ${right}
                math add ${right}, ${left}`, true)) + '\n'
            } else {
                let left = indent(readExpression())
                let right = indent(readExpression())

                binary += 'MOV 01\n'
                binary += indent(left + '\n' + right) + '\n'
                binary += indent('    PADDING 00') + '\n'
            }
        } else if (startsWith('mth') || startsWith('math')) {
            skipWhitespace()

            let op: ('nand' | 'add' | 'unknown') = (startsWith('nand') || startsWith('N') || startsWith('!')) ? 'nand' :
                (startsWith('add') || startsWith('+') || startsWith('plus')) ? 'add' :
                    'unknown'

            if (op === 'unknown') {
                console.log(`ERROR: Invalid operation type for math instruction.`)
                printPosition()
            }

            let left = readExpression()
            let right = readExpression()

            binary += `MATH 11\n` + (op === 'add' ? indent('ADD 0') + '\n' : indent('NAND 1') + '\n') +
                indent(left) + `\n` + indent(right) + `\n\n` + indent('PADDING\n' + indent('0'))
        } else if (startsWith('jmp') || startsWith('jump')) {
            skipWhitespace()

            if (!startsWith('(')) {
                console.log(`Could not find open paren for jump conditions.`)
                printPosition()
            }

            let conds = stub().split(')')[0]
                .replace(/( +or *)|( *or +)/g, ' ').replace(/ +/g, ' ') // whitespace
                .replace(/0|==?/g, 'zero')
                .replace(/\>|\+1?/g, 'more')
                .replace(/\-1?|\</g, 'less')
                .split(' ')
            conds = [...new Set(conds)]

            const flags = (conds.includes('zero') ? '1' : '0') +
                (conds.includes('less') ? '1' : '0') +
                (conds.includes('more') ? '1' : '0')

            pointer += stub().split(')')[0].length + 1
            skipWhitespace()

            let dest = indent(readExpression())

            binary += `JUMP\n${indent(`FLAGS: (${conds.join(' or ')}) ${flags}`)}\n${dest}\n\n${indent(`PADDING\n${indent('0000000000000000000000000000000')}`)}`
        } else if (startsWith('define')) {
            skipWhitespace()

            let name = readName()

            skipWhitespace()

            let value = readExpression(true)

            global_table[name] = value
        } else if (startsWith('macro')) {
            skipWhitespace()
            let macro_name = readName()

            if (!startsWith('(')) {
                console.log('Cannot find parameters declaration block in macro definition.')
                printPosition()
            }

            skipWhitespace()
            let macro_args = stub().split(')')[0].split(',').map(e => e.trim())
            pointer += macro_args.length + 3
            skipWhitespace()

            skipWhitespace()
            let macro_code = ``
            while (!startsWith(`end ${macro_name}`)) macro_code += code[pointer++]
            macro_code = macro_code.trim()
            skipWhitespace()

            global_functions[macro_name] = {
                name: macro_name,
                args: macro_args,
                argcount: macro_args.length,
                code: macro_code
            }
        } else if (startsWith('@')) {
            skipWhitespace()
            let name = readName()

            if (!startsWith('(')) {
                console.log('Cannot find parameters declaration block in macro call.')
                printPosition()
            }

            skipWhitespace()
            let macro_args = stub().split(')')[0].split(',').map(e => e.trim())
            pointer += stub().split(')')[0].length + 2
            skipWhitespace()

            if (!global_functions[name]) {
                console.log(`Macro ${name} does not exist in the macro registry.`)
                printPosition()
            }

            let macro = global_functions[name]
            if (macro_args.length !== macro.argcount) {
                console.log(`Invalid macro argument count. Expected ${macro.argcount} but got ${macro_args.length}.`)
                printPosition()
            }

            let __code = macro.code
            for (let i = 0; i < macro.argcount; i++)
                if (macro.args[i] != '') __code = __code.replace(new RegExp(macro.args[i], 'g'), macro_args[i])

            binary += indent(assemble(__code, true))
            // console.log('\n\n\n\n\n\n')
        }

        else {
            console.log('Invalid or undefined instruction.')
            printPosition()
        }

        skipWhitespace()
        binary += '\n'
    }

    return binary
}

if (!process.argv[2]) {
    console.log('Usage:\n    %s <file_name>', process.argv[1])
}

const fs = require('fs')

replace_mov = !(process.argv.includes('--preserve-mov') || process.argv.includes('--mov'))

const output = assemble(fs.readFileSync(process.argv[2], 'utf-8')).trim()

if (process.argv.includes('--minify')) console.log(output.replace(/[^01]/g, '').replace(/\n    /g, '\n'))
else console.log(output.replace(/\n    /g, '\n'))