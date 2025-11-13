# Simple Makefile with short comments for each target
# Lang Workbench: build and run small language examples located in ./src

.PHONY: bash

# Bash
# Make the bash example executable
chmod_bash:
	chmod +x ./src/bash_lang.sh

# Run the bash example
run_bash:
	./src/bash_lang.sh


# C
# Compile C source to executable
compile_c:
	gcc ./src/c_lang.c -o ./src/c_lang

# Run C preprocessor only (output .i)
preprocessing_c:
	gcc -E ./src/c_lang.c -o ./src/c_lang.i

# Compile to assembly (from preprocessed file .i to .s)
compilation_c:
	gcc -S ./src/c_lang.i -o ./src/c_lang.s

# Assemble the .s file to object file .o
assembly_c:
	gcc -c ./src/c_lang.s -o ./src/c_lang.o

# Link object file to executable
linking_c:
	gcc ./src/c_lang.o -o ./src/c_lang

# Run the compiled C program
run_c:
	./src/c_lang


# C++
# Compile C++ source to executable
compile_cpp:
	g++ ./src/cpp_lang.cpp -o ./src/cpp_lang

# Preprocess C++ source to .i
preprocessing_cpp:
	g++ -E ./src/cpp_lang.cpp -o ./src/cpp_lang.i

# Compile preprocessed C++ to assembly .s
compilation_cpp:
	g++ -S ./src/cpp_lang.i -o ./src/cpp_lang.s

# Assemble assembly to object .o
assembly_cpp:
	g++ -c ./src/cpp_lang.s -o ./src/cpp_lang.o

# Link object to executable
linking_cpp:
	g++ ./src/cpp_lang.o -o ./src/cpp_lang

# Run the compiled C++ program
run_cpp:
	./src/cpp_lang


# x86/64 assembly
# Compile x86_64 assembly to executable
compile_ass_x86_64:
	gcc -nostdlib -o ./src/x86_64_lang ./src/x86_64_lang.s -march=x86-64

# Run x86_64 assembly program (host must match)
run_ass_x86_64:
	./src/x86_64_lang


# Arm assembly
# Compile for AArch64 target (static, no stdlib)
compile_ass_arm: # aarch64-linux-gnu-gcc -nostdlib -o ./src/arm_lang ./src/arm_lang.s
	aarch64-linux-gnu-gcc -static -nostdlib -o ./src/arm_lang ./src/arm_lang.s

# Run ARM binary under QEMU emulation
run_ass_arm:
	qemu-aarch64 ./src/arm_lang


# Risc v assembly
# Compile RISC-V assembly for riscv64 target (static, no stdlib)
compile_ass_risc_v:
	riscv64-linux-gnu-gcc -static -nostdlib -o ./src/risc_v_lang ./src/risc_v_lang.s

# Run RISC-V binary under QEMU
run_ass_risc_v:
	qemu-riscv64 ./src/risc_v_lang


# C sharp
# Compile C# source to .exe using mcs (Mono C# compiler)
compile_csharp:
	mcs ./src/csharp_lang.cs -out:./src/csharp_lang.exe

# Run the compiled .NET executable with mono
run_csharp:
	mono ./src/csharp_lang.exe


# Rust
# Compile Rust source to native executable
compile_rust:
	rustc ./src/rust_lang.rs -o ./src/rust_lang

# Run the Rust program
run_rust:
	./src/rust_lang


# Go
# Build Go program to executable
compile_go:
	go build -o ./src/go_lang ./src/go_lang.go

# Run the Go executable
run_go:
	./src/go_lang


# Java
# Compile Java source to .class
compile_java:
	javac ./src/Java_lang.java

# Run the Java class (classpath set to ./src)
run_java:
	java -cp ./src Java_lang


# Php
# Run the PHP script with the system php interpreter
run_php:
	php ./src/php_lang.php


# Python
# Run the Python3 script
run_python:
	python3 ./src/python_lang.py


# Javascript
# Run the Node.js script
run_javascript:
	node ./src/javascript_lang.js








