build:
	mkdir build
	clang bit.c -g -o build/bit

clean:
	rm -rf build/bit.dSYM
	rm -rf build/bit
	rm -rf build/output.example
	rm -rf build

release:
	clang bit.c -O3 -o build/bit

run: build
	build/bit

output: build
	build/bit > build/output.example

comm: clean .git
	git add .
	@echo Enter a commit message:
	@read com_msg && git commit -m "$$com_msg"

push: comm clean
	git push