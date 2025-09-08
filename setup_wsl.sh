#!/bin/bash

echo "=========================================="
echo "  CONFIGURANDO WSL PARA ANDROID BUILD"
echo "=========================================="
echo

# Actualizar sistema
echo "📦 Actualizando sistema..."
sudo apt update && sudo apt upgrade -y

# Instalar dependencias
echo "🔧 Instalando dependencias..."
sudo apt install -y \
    git \
    zip \
    unzip \
    openjdk-8-jdk \
    python3 \
    python3-pip \
    python3-venv \
    python3-distutils \
    python3-setuptools \
    autoconf \
    libtool \
    pkg-config \
    zlib1g-dev \
    libncurses-dev \
    cmake \
    libffi-dev \
    libssl-dev \
    build-essential \
    ccache \
    m4 \
    libc6-dev \
    libgmp-dev \
    libmpfr-dev \
    libmpc-dev

# Configurar Java
echo "☕ Configurando Java..."
echo 'export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' >> ~/.bashrc
echo 'export PATH=$PATH:$JAVA_HOME/bin' >> ~/.bashrc

# Instalar pipx y buildozer
echo "🏗️ Instalando pipx y buildozer..."
sudo apt install -y pipx

# Configurar pipx
pipx ensurepath

# Instalar buildozer con pipx
pipx install buildozer
pipx install cython

# Recargar configuración
source ~/.bashrc

echo
echo "✅ Configuración completada!"
echo "Reinicia la terminal WSL y ejecuta: build_wsl.sh"
