# Development workbench
FROM ubuntu:24.04

# Prevent interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Base System Utilities
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    wget \
    unzip \
    vim \
    nano \
    less \
    file \
    git \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

# Python
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# C / C++ Development Dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    ninja-build \
    gdb \
    cppcheck \
    clang \
    clang-format \
    binutils \
    && rm -rf /var/lib/apt/lists/*

# Assembly & Cross-Architecture Dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc-aarch64-linux-gnu \
    g++-aarch64-linux-gnu \
    gcc-riscv64-linux-gnu \
    g++-riscv64-linux-gnu \
    qemu-user \
    && rm -rf /var/lib/apt/lists/*

# Go Language
RUN apt-get update && apt-get install -y --no-install-recommends \
    golang-go \
    && rm -rf /var/lib/apt/lists/*

# Rust Language
RUN apt-get update && apt-get install -y --no-install-recommends \
    rustc \
    cargo \
    && rm -rf /var/lib/apt/lists/*

# Java Development Kit
RUN apt-get update && apt-get install -y --no-install-recommends \
    openjdk-21-jdk \
    && rm -rf /var/lib/apt/lists/*

# C# / .NET Development
RUN apt-get update && apt-get install -y --no-install-recommends \
    mono-complete \
    && rm -rf /var/lib/apt/lists/*

# Node.js / JavaScript
RUN apt-get update && apt-get install -y --no-install-recommends \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*

# PHP Development
RUN apt-get update && apt-get install -y --no-install-recommends \
    php-cli \
    php-common \
    php-mbstring \
    php-xml \
    php-curl \
    php-zip \
    php-json \
    composer \
    && rm -rf /var/lib/apt/lists/*

# Environment Configuration
ENV LANG=C.UTF-8
WORKDIR /workspace

# Validation (Display Installed Compilers / Interpreters)
RUN gcc --version
RUN clang --version
RUN clang-format --version
RUN aarch64-linux-gnu-gcc --version
RUN riscv64-linux-gnu-gcc --version
RUN go version
RUN rustc --version
RUN java --version
RUN node --version
RUN npm --version
RUN php --version
RUN composer --version
RUN mono --version
RUN mcs --version

# Default Shell
CMD ["/bin/bash"]











