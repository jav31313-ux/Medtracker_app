# 📱 Cómo Compilar tu APK - Tracker de Medicamentos

## 🚀 Opción 1: GitHub Actions (Recomendado - Automático)

1. **Sube tu proyecto a GitHub**:
   ```bash
   git init
   git add .
   git commit -m "Tracker de Medicamentos v1.0"
   git branch -M main
   git remote add origin https://github.com/TU_USUARIO/medicamentos-tracker.git
   git push -u origin main
   ```

2. **Crea el archivo `.github/workflows/build.yml`**:
   ```yaml
   name: Build APK
   on: [push, workflow_dispatch]
   jobs:
     build:
       runs-on: ubuntu-latest
       steps:
       - uses: actions/checkout@v3
       - name: Setup Python
         uses: actions/setup-python@v4
         with:
           python-version: '3.9'
       - name: Install buildozer
         run: |
           sudo apt update
           sudo apt install -y git zip unzip openjdk-8-jdk autoconf libtool pkg-config zlib1g-dev libncurses5-dev libncursesw5-dev libtinfo5 cmake libffi-dev libssl-dev
           pip install buildozer
       - name: Build APK
         run: buildozer android debug
       - name: Upload APK
         uses: actions/upload-artifact@v3
         with:
           name: medicamentos-tracker-apk
           path: bin/*.apk
   ```

3. **Ejecuta el workflow** desde GitHub Actions y descarga la APK

## 🐳 Opción 2: Docker (Si tienes Docker instalado)

```bash
# Ejecuta el script que creé:
build_docker.bat
```

## 🖥️ Opción 3: WSL en Windows

1. **Instala WSL**:
   ```cmd
   wsl --install Ubuntu
   ```

2. **En WSL, instala dependencias**:
   ```bash
   sudo apt update
   sudo apt install -y git zip unzip openjdk-8-jdk python3-pip autoconf libtool pkg-config zlib1g-dev libncurses5-dev libncursesw5-dev libtinfo5 cmake libffi-dev libssl-dev
   pip3 install --user buildozer
   ```

3. **Compila**:
   ```bash
   cd /mnt/c/Users/Juanita\ Avila\ Vargas/Desktop/proyecto
   buildozer android debug
   ```

## ☁️ Opción 4: Servicio Online

Usa **Replit** o **Google Colab** con un entorno Linux:

1. Sube tu proyecto
2. Instala buildozer
3. Ejecuta `buildozer android debug`

## 📋 Notas Importantes

- La primera compilación toma 30-60 minutos
- Necesitas ~4GB de espacio libre
- La APK se genera en `bin/medicamentostracker-1.0-armeabi-v7a-debug.apk`
- Para instalar: habilita "Orígenes desconocidos" en Android

## 🔧 Si hay errores

- Verifica que todos los archivos .py no tengan errores de sintaxis
- Asegúrate que el archivo tracker.kv existe
- Revisa los logs de buildozer para errores específicos
