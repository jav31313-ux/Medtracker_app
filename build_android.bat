@echo off
echo ========================================
echo  TRACKER DE MEDICAMENTOS - BUILD ANDROID
echo ========================================
echo.

echo Verificando dependencias...
python --version
echo.

echo Instalando buildozer si no existe...
pip install buildozer

echo.
echo Iniciando build de Android...
echo Esto puede tomar varios minutos la primera vez...
echo.

buildozer android debug

echo.
if exist bin\*.apk (
    echo ========================================
    echo  BUILD COMPLETADO EXITOSAMENTE!
    echo ========================================
    echo.
    echo El archivo APK se encuentra en la carpeta 'bin'
    dir bin\*.apk
    echo.
    echo Para instalar en tu dispositivo Android:
    echo 1. Habilita "Origenes desconocidos" en Configuracion
    echo 2. Transfiere el APK a tu dispositivo
    echo 3. Abre el APK e instala la aplicacion
) else (
    echo ========================================
    echo  ERROR EN EL BUILD
    echo ========================================
    echo Revisa los logs arriba para identificar el problema
)

echo.
pause
