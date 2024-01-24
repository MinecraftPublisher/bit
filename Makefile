main: assembler vm

clean:
	rm -rf build/ out/
	mkdir build/ out/

assembler: clean src/assembler.peg src/basm_helper.h
	packcc -o basm src/assembler.peg
	clang basm.c -o build/basm -g
	mv basm.c basm.h build/

vm: clean src/bit.c src/manual.h
	clang src/bit.c -o build/bit -g

run: assembler vm
	clear
	@endsuccess "anykey 'Press any key to run...'"
	clear
	@cat test.basm | ./build/basm | fold -w 64
	@cat test.basm | ./build/basm > ./out/out.bit