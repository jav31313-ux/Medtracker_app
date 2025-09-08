@echo off
echo ========================================
echo  SUBIENDO PROYECTO A GITHUB
echo ========================================
echo.

echo IMPORTANTE: Antes de ejecutar este script:
echo 1. Crea un repositorio en GitHub llamado "medicamentos-tracker"
echo 2. Copia la URL del repositorio (ejemplo: https://github.com/TU_USUARIO/medicamentos-tracker.git)
echo.

set /p REPO_URL="Pega aqui la URL de tu repositorio GitHub: "

if "%REPO_URL%"=="" (
    echo Error: Debes proporcionar la URL del repositorio
    pause
    exit /b 1
)

echo.
echo Inicializando repositorio Git...
git init

echo.
echo Agregando todos los archivos...
git add .

echo.
echo Creando primer commit...
git commit -m "Tracker de Medicamentos v1.0 - Primera version"

echo.
echo Configurando rama principal...
git branch -M main

echo.
echo Conectando con GitHub...
git remote add origin %REPO_URL%

echo.
echo Subiendo archivos a GitHub...
git push -u origin main

echo.
echo ========================================
echo  PROYECTO SUBIDO EXITOSAMENTE!
echo ========================================
echo.
echo Ahora ve a tu repositorio en GitHub:
echo 1. Haz clic en la pestana "Actions"
echo 2. Veras que el build se esta ejecutando
echo 3. Espera 20-30 minutos a que termine
echo 4. Descarga la APK desde "Artifacts"
echo.

pause
