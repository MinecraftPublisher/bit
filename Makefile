build: clean *.h *.c
	mkdir build
	clang bit.c -g -o build/bit
	clang assembler.c -g -o build/asm

clean:
	@rm -rf build/bit.dSYM
	rm -rf build/bit
	@rm -rf build/asm.dSYM
	rm -rf build/asm

	@rm -rf build/output.example
	@rm -rf build

release:
	clang bit.c -O3 -o build/bit
	clang assembler.c -O3 -o build/asm

asm: build
	@build/asm $(io)

run: build
	@build/bit $(io)

# output: build
# 	build/bit > build/output.example

comm: clean .git
	git add .
	@echo Enter a commit message:
	@read com_msg && git commit -m "$$com_msg"

push: comm clean
	git push