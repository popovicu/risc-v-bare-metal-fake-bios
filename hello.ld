MEMORY {
  dram_space (rwx) : ORIGIN = 0x80000000, LENGTH = 128
}

SECTIONS {
  .text : {
    hello.o(.text.bios)
  } > dram_space
}
