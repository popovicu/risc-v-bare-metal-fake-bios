CROSS_COMPILE=riscv64-linux-gnu-

hello: hello.o hello.ld
	${CROSS_COMPILE}ld -T hello.ld --no-dynamic-linker -m elf64lriscv -static -notstdlib -s -o hello hello.o

hello.o: hello.s
	${CROSS_COMPILE}as -march=rv64i -mabi=lp64 -o hello.o -c hello.s
