main: assembler vm

clean:
	rm -rf build/ out/
	mkdir build/ out/

assembler: clean src/assembler.peg
	packcc -o basm src/assembler.peg
	clang basm.c -o build/basm
	mv basm.c basm.h build/

vm: clean src/bit.c
	clang src/bit.c -o build/bit

run: assembler vm
	clear
	@cat test.basm | ./build/basm | fold -w 32
	@cat test.basm | ./build/basm > ./out/out.bit