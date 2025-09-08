# 📱 Guía Completa: Crear APK de Tracker de Medicamentos

## 🐧 **MÉTODO 1: WSL (Recomendado para desarrollo local)**

### **Paso 1: Configurar WSL**

1. **Abrir PowerShell como Administrador**
2. **Verificar WSL:**
   ```powershell
   wsl --list --verbose
   ```
3. **Si no está instalado:**
   ```powershell
   wsl --install -d Ubuntu
   ```
4. **Reiniciar Windows** si es necesario

### **Paso 2: Configurar Ubuntu en WSL**

1. **Abrir Ubuntu** desde el menú inicio
2. **Ejecutar script de configuración:**
   ```bash
   cd /mnt/c/Users/Juanita\ Avila\ Vargas/Desktop/proyecto
   chmod +x setup_wsl.sh
   ./setup_wsl.sh
   ```
3. **Reiniciar terminal WSL**

### **Paso 3: Construir APK**

```bash
cd /mnt/c/Users/Juanita\ Avila\ Vargas/Desktop/proyecto
chmod +x build_wsl.sh
./build_wsl.sh
```

**⏱️ Tiempo estimado: 25-35 minutos**

---

## 🐙 **MÉTODO 2: GitHub Actions (Más rápido y automático)**

### **Paso 1: Crear cuenta GitHub**
- Ve a [github.com](https://github.com)
- Crea cuenta gratuita
- Verifica email

### **Paso 2: Instalar Git**
- Descarga: [git-scm.com](https://git-scm.com/download/win)
- Instalar con configuración por defecto

### **Paso 3: Crear repositorio**
1. En GitHub, click **"New repository"**
2. Nombre: `medicamentos-tracker`
3. Descripción: `App móvil para tracking de medicamentos`
4. Click **"Create repository"**
5. **Copiar la URL** del repositorio

### **Paso 4: Subir proyecto**

**Opción A - Script automático:**
```powershell
cd "C:\Users\Juanita Avila Vargas\Desktop\proyecto"
.\subir_github.bat
```

**Opción B - Manual:**
```powershell
cd "C:\Users\Juanita Avila Vargas\Desktop\proyecto"

# Configurar Git (solo primera vez)
git config --global user.name "Tu Nombre"
git config --global user.email "tu-email@gmail.com"

# Subir proyecto
git init
git add .
git commit -m "Tracker de Medicamentos v1.0"
git branch -M main
git remote add origin https://github.com/TU_USUARIO/medicamentos-tracker.git
git push -u origin main
```

### **Paso 5: Descargar APK**
1. Ve a tu repositorio en GitHub
2. Click **"Actions"**
3. Espera que termine el build (15-20 min)
4. Click en el build completado
5. Descarga **"medicamentos-tracker-apk"** desde Artifacts

**⏱️ Tiempo estimado: 15-20 minutos**

---

## 📋 **Herramientas Necesarias**

### **Para WSL:**
- Windows 10/11 con WSL habilitado
- Ubuntu 20.04+ en WSL
- 8GB+ RAM disponible
- 10GB+ espacio libre

### **Para GitHub Actions:**
- Cuenta GitHub (gratuita)
- Git para Windows
- Conexión a internet estable

---

## 🚀 **Comandos Rápidos**

### **WSL - Setup completo:**
```bash
# En Ubuntu WSL
cd /mnt/c/Users/Juanita\ Avila\ Vargas/Desktop/proyecto
chmod +x setup_wsl.sh build_wsl.sh
./setup_wsl.sh
# Reiniciar terminal
./build_wsl.sh
```

### **GitHub - Setup completo:**
```powershell
# En PowerShell
cd "C:\Users\Juanita Avila Vargas\Desktop\proyecto"
git config --global user.name "Tu Nombre"
git config --global user.email "tu-email@gmail.com"
.\subir_github.bat
```

---

## 📱 **Instalar APK en Android**

1. **Transferir APK** a tu dispositivo Android
2. **Habilitar orígenes desconocidos:**
   - Configuración → Seguridad → Orígenes desconocidos
3. **Abrir APK** y seguir instalación
4. **Permitir permisos** solicitados

---

## ⚡ **Comparación de Métodos**

| Método | Tiempo | Ventajas | Desventajas |
|--------|--------|----------|-------------|
| **WSL** | 25-35 min | Control total, debugging local | Requiere configuración, usa recursos locales |
| **GitHub Actions** | 15-20 min | Automático, no usa recursos locales | Requiere cuenta GitHub, menos control |
| **Docker** | 45-60 min | Aislado, reproducible | Más lento, complejo |

---

## 🔧 **Solución de Problemas**

### **Error: buildozer no encontrado**
```bash
pip3 install --user buildozer
echo 'export PATH=$PATH:~/.local/bin' >> ~/.bashrc
source ~/.bashrc
```

### **Error: Java no encontrado**
```bash
sudo apt install openjdk-8-jdk
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
```

### **Error: Sin espacio**
```bash
# Limpiar builds anteriores
rm -rf .buildozer bin
```

### **GitHub Actions falla**
- Verificar que todos los archivos estén subidos
- Revisar logs en la pestaña Actions
- Asegurar que buildozer.spec esté correcto
