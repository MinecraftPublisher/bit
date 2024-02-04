const fs = require('fs')

const files = process.argv.slice(2)
const table = {}

if(files.length === 0) {
    console.log(`Usage:
    ${process.argv0} [list of file names]
    -> Formats a list of files for better readability when printed.
    -> Inserts formatted line numbers and skips empty lines. Provides file names.`)
}

let text = ``

let highest = 0
for(let file of files) {
    let _cur = Math.floor(Math.log10(fs.readFileSync('src/' + file, 'utf-8').split('\n').length))
    if(highest < _cur) highest = _cur
}

// highest += 3

for(let file of files) {
    table[file] = fs.readFileSync('src/' + file, 'utf-8')
    let header = `=================================================== ${file} ===================================================`
    text += `${new Array(header.length).fill('_').join('')}
${header}
${new Array(header.length).fill('^').join('')}
\n`
    text += table[file].split('\n').map((e, i) => {
        let spacing = `${new Array(highest - Math.floor(Math.log10((i + 1) === 0 ? 1 : (i + 1)))).fill(' ').join('')}`
        let output = `${spacing}[${i + 1}] ${e}`
        return e.replaceAll(/\s+/g, '') === '' ? '' : output
    }).join('\n')
    text += `\n\n`
}

console.log(text)