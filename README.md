# x86-Assembly
Harnessing the power of assembly to create the infamous hello world executable

# Building
- Install NASM if not already installed
```sudo apt-get install -y nasm```

- Run 
```nasm -f elf32 -o helloWorld.o helloWorld.asm```

- Now we can make our newly created helloWorld.o file our executable with the command 
```ld -m elf_i386 -o helloWorld helloWorld.o```

- Enjoy the power of your newly crafted assembly executable 

