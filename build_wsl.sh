#!/bin/bash

echo "=========================================="
echo "  CONSTRUYENDO APK CON WSL"
echo "=========================================="
echo

# Navegar al proyecto
PROJECT_PATH="/mnt/c/Users/Juanita Avila Vargas/Desktop/proyecto"
cd "$PROJECT_PATH"

echo "📂 Directorio actual: $(pwd)"
echo "📋 Archivos del proyecto:"
ls -la

echo
echo "🧹 Limpiando builds anteriores..."
if [ -d ".buildozer" ]; then
    rm -rf .buildozer
fi
if [ -d "bin" ]; then
    rm -rf bin
fi

echo
echo "🏗️ Iniciando build de Android..."
echo "⏱️ Esto tomará 25-35 minutos la primera vez..."
echo

# Verificar buildozer
if ! command -v buildozer &> /dev/null; then
    echo "❌ Error: buildozer no está instalado"
    echo "Ejecuta primero: ./setup_wsl.sh"
    exit 1
fi

# Verificar Java
if [ -z "$JAVA_HOME" ]; then
    export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
    export PATH=$PATH:$JAVA_HOME/bin
fi

echo "☕ Java version:"
java -version

echo
echo "🚀 Construyendo APK..."
buildozer android debug --verbose

echo
echo "📱 Verificando APK generada..."
if [ -f bin/*.apk ]; then
    echo "✅ APK generada exitosamente!"
    echo "📍 Ubicación: $(pwd)/bin/"
    ls -lh bin/*.apk
    echo
    echo "📲 Para instalar:"
    echo "1. Transfiere el archivo APK a tu Android"
    echo "2. Habilita 'Orígenes desconocidos' en Configuración"
    echo "3. Instala la APK"
else
    echo "❌ Error: No se generó la APK"
    echo "Revisa los logs arriba para identificar el problema"
fi
