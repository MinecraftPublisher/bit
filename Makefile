main: assembler vm

clean:
	rm -rf build/ out/
	mkdir build/ out/

assembler_v1: clean src/assembler_v1.peg src/basm_helper.h
	packcc -o basm src/assembler.peg
	clang basm.c -o build/basm -g
	mv basm.c basm.h build/

assembler: clean src/assembler.ts
	bun build src/assembler.ts --compile --outfile build/basm

vm: clean src/bit.c src/manual.h
	clang src/bit.c -o build/bit -g

run: assembler vm
	clear
	@endsuccess "anykey 'Press any key to run...'"
	clear
	@./build/basm test.basm | fold -w 64
	@./build/basm test.basm --minify > ./out/out.bit