# Lang Workbench

**Lang Workbench** is a multi-language programming and learning environment built with Docker and other tools (compilers, debuggers, etc...). It allows users to work from their host system while maintaining a completely isolated and cross-platform environment.
The repository also includes a tutorials section, where I will add little by little courses and tutorials about core programming concepts (programming paradigms, data structures and algorithms, design patterns, cryptography, etc..). Note that for now all courses and tutorials will be in C++.

---

## Project Structure

```

lang-workbench/
├── README.md
├── Makefile
├── docker-compose.yaml
├── Dockerfile
├── LICENSE
└── workspace/
├── Makefile
├── src/
│   ├── arm_lang.s
│   ├── bash_lang.sh
│   ├── c_lang.c
│   ├── cpp_lang.cpp
│   ├── csharp_lang.cs
│   ├── go_lang.go
│   ├── Java_lang.java
│   ├── javascript_lang.js
│   ├── php_lang.php
│   ├── python_lang.py
│   ├── risc_v_lang.s
│   ├── rust_lang.rs
│   └── x86_64_lang.s
└── tutorials/
├── 1_programming_paradigms/
├── 2_data_structures_and_algorithms/
├── 3_design_patterns/
├── 4_cryptography/
├── 5_parallel_programming/
└── 6_networking/

```

---

## The project

### What is the Workspace?

The **workspace** folder is where the `src` (implementation of simple examples in many languages, from different types of assembly to JavaScript) and the `tutorials` folder (tutorials about core programming concepts, programming paradigms, data structures and algorithms, design patterns, cryptography, etc..) are implemented.

**Current compatibility:**

| Language            |
| ------------------- |
| **Bash**            |
| **x86-64 assembly** |
| **Risc V assembly** |
| **Arm assembly**    |
| **C**               |
| **C++**             |
| **C#**              |
| **Rust**            |
| **Go**              |
| **Java**            |
| **PHP**             |
| **Python**          |
| **JavaScript**      |

| Tutorials           |
| ------------------- |

+ What is the src Folder?

The **src** folder contains simple "Hello World" code for each language implemented. Each language or file will have a dedicated section in the outer Makefile for compiling and running. For C and C++, they will command the compilation steps one by one (preprocessing, compilation, assembly, and linking).

**Note:** .

+ What is the tutorials Folder?

The **tutorials** folder contains courses and tutorials about core programming concepts (programming paradigms, data structures and algorithms, design patterns, cryptography, etc..). Note that for now all courses and tutorials will be in C++. You can work on the tutorials folder from your host because it will be bind-mounted over Docker, so you can create new files and play with different courses and languages.

**Note:** All the tutorials will be in C++.

---

## Start Up
### Set up the environment

**Clone the repository**

```

git clone [https://github.com/Rhaytou/lang-workbench.git](https://github.com/Rhaytou/lang-workbench.git)

```

**Change directory**

```

cd ./lang-workbench

```

**Start the container**

```

make up

```

**Get to the container (inside the /workspace)**

```

make bash

```

**Note**: After `make bash` you will be inside the container in the `/workspace` folder:
    - You can go to the `src` folder for testing the languages and their commands that you can browse inside `/workspace/Makefile`. Make sure you are located at `/workspace` to be able to work with the Makefile targets for files inside `src`.
    - Or you can browse and test courses inside the `/workspace/tutorials`.

## Coming Soon

### Workspace/src

* I will soon add a workflow for reverse engineering using many tools.
* I will soon add a workflow for debugging with gdb.
* Clang.

### Workspace/tutorials

* I will soon add the first 5 courses.

---

## Contribute

This section will be updated soon.

---

