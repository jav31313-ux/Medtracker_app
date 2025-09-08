@echo off
echo ========================================
echo  COMPILANDO APK CON DOCKER
echo ========================================
echo.

echo Verificando Docker...
docker --version
if errorlevel 1 (
    echo ERROR: Docker no esta instalado
    echo Instala Docker Desktop desde: https://www.docker.com/products/docker-desktop
    pause
    exit /b 1
)

echo.
echo Construyendo imagen Docker...
docker build -t medicamentos-tracker .

echo.
echo Compilando APK (esto puede tomar 30-60 minutos)...
docker run --rm -v "%cd%\bin":/app/bin medicamentos-tracker

echo.
echo Verificando APK generada...
if exist bin\*.apk (
    echo ========================================
    echo  APK COMPILADA EXITOSAMENTE!
    echo ========================================
    dir bin\*.apk
) else (
    echo No se encontro APK en la carpeta bin
)

pause
