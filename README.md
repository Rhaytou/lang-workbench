# Lang Workbench

A self-contained, cross-architecture polyglot development environment running entirely in Docker. It provides a single container with compilers, interpreters, assemblers, debuggers, and cross-compilation toolchains for 13 languages — including native x86-64, ARM, and RISC-V assembly executed under QEMU emulation.

This is not a tutorial and not an application. It is a working infrastructure layer — a consistent, isolated workspace a developer can clone, start, and immediately compile and run code in any supported language, on any host machine, without installing a single toolchain locally.

---

## Stack

| Layer | Technology |
| --- | --- |
| Container runtime | Docker + Docker Compose |
| Base image | Ubuntu 24.04 |
| Build orchestration | Makefile |
| Cross-architecture emulation | QEMU (ARM, RISC-V) |

---

## Language Support

| Language | Toolchain |
| --- | --- |
| Bash | bash |
| x86-64 Assembly | GCC (nostdlib) |
| ARM Assembly | aarch64-linux-gnu-gcc + QEMU |
| RISC-V Assembly | riscv64-linux-gnu-gcc + QEMU |
| C | GCC |
| C++ | G++ |
| C# | Mono (mcs) |
| Rust | rustc |
| Go | go |
| Java | OpenJDK 21 |
| PHP | php-cli |
| Python | python3 |
| JavaScript | Node.js |

---

## Architecture

```
lang-workbench/
├── Dockerfile              Ubuntu 24.04 image — all toolchains installed and validated at build time
├── docker-compose.yaml     Single service, workspace bind-mounted into the container
├── Makefile                Container lifecycle — up, down, bash, docker_clean_all
└── workspace/
    ├── Makefile            Per-language compile and run targets
    └── src/
        ├── bash_lang.sh
        ├── x86_64_lang.s
        ├── arm_lang.s
        ├── risc_v_lang.s
        ├── c_lang.c
        ├── cpp_lang.cpp
        ├── csharp_lang.cs
        ├── rust_lang.rs
        ├── go_lang.go
        ├── java_lang.java
        ├── php_lang.php
        ├── python_lang.py
        └── javascript_lang.js
```

The `workspace/` folder is bind-mounted into the container at `/workspace`. Any file you create or edit on your host is immediately available inside the container — no rebuild required.

---

## Prerequisites

- Docker
- Docker Compose

Nothing else. All compilers, interpreters, and toolchains are installed inside the container at build time and validated on every build.

---

## Setup

**Clone the repository**

```
git clone https://github.com/Rhaytou/lang-workbench.git
cd lang-workbench
```

**Start the container**

```
make up
```

**Open a shell inside the container**

```
make bash
```

You will land at `/workspace`, with the full toolchain available and all source files in `./src`.

---

## Usage

All compile and run targets are defined in `workspace/Makefile`. Run them from `/workspace` inside the container.

### Bash

```
make chmod_bash
make run_bash
```

### C

Step-by-step — each compilation stage is exposed individually:

```
make preprocessing_c    # .c → .i  (preprocessor)
make compilation_c      # .i → .s  (compiler)
make assembly_c         # .s → .o  (assembler)
make linking_c          # .o → bin (linker)
make run_c
```

Or compile directly:

```
make compile_c
make run_c
```

### C++

```
make preprocessing_cpp
make compilation_cpp
make assembly_cpp
make linking_cpp
make run_cpp
```

Or compile directly:

```
make compile_cpp
make run_cpp
```

### x86-64 Assembly

```
make compile_ass_x86_64
make run_ass_x86_64
```

> The host architecture must be x86-64.

### ARM Assembly

```
make compile_ass_arm
make run_ass_arm
```

> Compiled for AArch64, executed under QEMU — runs on any host.

### RISC-V Assembly

```
make compile_ass_risc_v
make run_ass_risc_v
```

> Compiled for riscv64, executed under QEMU — runs on any host.

### C#

```
make compile_csharp
make run_csharp
```

### Rust

```
make compile_rust
make run_rust
```

### Go

```
make compile_go
make run_go
```

### Java

```
make compile_java
make run_java
```

### PHP

```
make run_php
```

### Python

```
make run_python
```

### JavaScript

```
make run_javascript
```

---

## Makefile Reference

### Root Makefile — container lifecycle

```
make up                 # Build image and start the container
make down               # Stop and remove the container and volumes
make bash               # Open an interactive shell in the container
make docker_clean_all   # Full Docker cleanup — containers, images, volumes, networks
```

### Per-service targets

```
make ew_start          # Start the workbench service
make ew_down           # Stop the workbench service
make ew_restart        # Restart the workbench service
make ew_logs           # Show container logs
make ew_bash           # Open a shell in the container
```

---

## License

MIT


