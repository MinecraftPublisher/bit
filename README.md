# bit.c
A simple, Turing-complete and easy to recreate CPU architecture.

## Assembler usage guide
- In bit, there are 4 instructions and 3 addressing modes. 
- The bit virtual machine has 131,072 bytes of memory and 16 registers, from rA to rP.
- By default, The virtual machine loads the input program into memory, Starting from byte 0, For a maximum of 16384 bytes.
- If the input program size exceeds this limit, The virtual machine will throw an error.
- A better I/O interface is not yet supported, But it soon will be in the form of magic addresses.

### Addressing modes and types
- `data`: Could be `addr` or `const`.
- `addr`: Could be `rX` or `mX` to denote register or memory address.
- `const`: Could be `$N` to denote a constant value.

### Instructions
- `HLT`: Also known as `hlt`, `HALT` or `halt`, Will immediately stop the CPU process.
- `MOV`: Also known as `mov`, `MOVE` or `move`, Will move a value to an address.
- `MTH`: Also known as `mth`, `MATH` or `math`, Will add or nand the left side to the right side and put the result in the left side address.
- `JMP`: Also known as `jmp`, `JUMP` or `jump`, Will jump to a certain address if the conditions are met.

#### HLT()
Takes in no arguments. Halts CPU execution immediately.
```py
hlt
```

#### MOV(data SRC, addr DEST)
Moves data from SRC to DEST.
```py
mov $1, rA                # moves the value `1` to the register rA.
                          # Same as `register[0] = 1;`
mov $6, mA                # NOT RECOMMENDED - Moves the value 6 to the memory address pointed to by rA.
                          # Same as `memory[register[0]] = 6;`
```

##### Trivia: The MOV instruction could be recreated with just MTH!
```py
macro mov_mth(SRC, DEST)
    mth nand DEST, $0      # sets DEST to all 1s
    mth nand DEST, DEST    # inverts DEST, making ut all 0s
    mth add DEST, SRC      # adds SRC to DEST, Essentially `x + 0 = x`
end mov_mth
```

#### MTH(bit op, addr LEFT, data RIGHT)
Adds or nands the left side and the right side, And stores the data in the left side.
```py
mov $5, rA                # Set rA to 5
                          # Same as `register[0] = 5;`
mth add rA, $1            # Set rA to 1 + rA
                          # Same as `register[0] = register[0] + 1;`
mth nand rA, rA           # Inverts rA.
                          # Same as `register[0] = ~(register[0]);` or `register[0] = ~(register[0] & register[0]);`
```

#### JMP(__flags__ flags, addr DEST)
Jumps to a said address (moves the Program Counter) if certain conditions are met.

##### Mechanics
- The jump instruction relies on a special register called `LAST`. This register cannot be accessed or modified directly from the program.
- The way that `LAST` is set varies based on instructions.
- `LAST` is set by the SRC in **MOV**, The output in **MTH** and doesn't change on **HLT** and **JMP**.
There are three flags which take up 3 bits, And can be mix and matched in this order:
1. Zero: Succeeds if the flag is set and `LAST == 0`.
2. Less: Succeeds if the flag is set and `LAST < 0`.
2. More: Succeeds if the flag is set and `LAST > 0`.
```py
# ... code here ...
jmp (zero) rB         # Jump to address in rB if `LAST == 0`
# ... code here ...
jmp (less or more) rB # Jump to address in rB if `LAST != 0`
# ... code here ...
jmp (0 -1), rB        # Jump to address in rB if `LAST <= 0`
```

### Macros
Bit assembler macros have two types: Function-like macros and Constants.

**v2 only**: Function-like macros and constants are globally accessible, But they do not behave this way in v1.

#### Constants (v1 only)
Constants are defined like this:
```py
define NAME { TEXT }      # Defines a macro with the name `NAME` with content being `TEXT`
```
To use constant, You need to strictly be inside of an instruction. You cannot call constants from outside instruction parameters:
```py
define SP { $17000 }      # Define a constant named (S)tack (P)ointer with the value being a constant 17000.
mov !SP, rA               # Move 17000 to the rA register.
mov $5, mA                # Move 5 to memory[17000].
```

**CAUTION**: You CANNOT use other constants inside a constant. Constants and other macros do not share a database.

#### Constants (v2 only)
Constants are defined like this:
```py
define NAME EXPR      # Defines a macro with the name `NAME` with content being `TEXT`
```
To use constant, You need to strictly be inside of an instruction. You cannot call constants from outside instruction parameters:
```py
define SP $17000          # Define a constant named (S)tack (P)ointer with the value being a constant 17000.
mov !SP, rA               # Move 17000 to the rA register.
mov $5, mA                # Move 5 to memory[17000].
```

#### Function-like macros
Function-like macros are defined like this:
```py
macro NAME(ARG1, ARG2) # Args HAVE TO BE comma-separated.
    # ... code ...
end NAME
```

And called like this:
```py
macro init_stack()
    define SP { $17000 }
    mov !SP, rA
    mov $5, mA
end init_stack

@init_stack() # put input arguments if any inside the ().
```

## CPU emulator usage guide
For the CPU emulator usage guide, Check `src/manual.h` for more information. This file also makes sure that a copy of the manual is also included in every copy of the bit cpu emulator executable.
