FROM kivy/buildozer:latest

# Establecer variables de entorno
ENV ANDROID_HOME=/opt/android-sdk
ENV PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# Crear directorio de trabajo
WORKDIR /app

# Copiar archivos del proyecto
COPY . .

# Instalar dependencias del sistema
RUN apt-get update && apt-get install -y \
    python3-pip \
    git \
    && rm -rf /var/lib/apt/lists/*

# Actualizar pip e instalar buildozer
RUN pip3 install --upgrade pip setuptools wheel
RUN pip3 install buildozer cython

# Crear directorio bin si no existe
RUN mkdir -p bin

# Dar permisos de ejecución
RUN chmod +x /app

# Compilar APK
CMD ["buildozer", "android", "debug", "--verbose"]
