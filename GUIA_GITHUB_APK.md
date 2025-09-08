# 📱 Guía Completa: Descargar APK desde GitHub Actions

## 🚀 Paso 1: Subir tu proyecto a GitHub

### Opción A: Desde la web de GitHub
1. Ve a [github.com](https://github.com) e inicia sesión
2. Haz clic en **"New repository"** (botón verde)
3. Nombre: `medicamentos-tracker`
4. Descripción: `Aplicación móvil para gestión de medicamentos`
5. Marca como **Público** (para usar GitHub Actions gratis)
6. Haz clic en **"Create repository"**

### Opción B: Desde la línea de comandos
```bash
# En tu carpeta del proyecto
git init
git add .
git commit -m "Tracker de Medicamentos v1.0"
git branch -M main
git remote add origin https://github.com/TU_USUARIO/medicamentos-tracker.git
git push -u origin main
```

## 🔧 Paso 2: GitHub Actions compilará automáticamente

Una vez subido el código, GitHub Actions:
- ✅ Detectará el archivo `.github/workflows/build-apk.yml`
- ✅ Instalará todas las dependencias automáticamente
- ✅ Compilará tu APK (toma 20-30 minutos)
- ✅ Guardará la APK como "artifact"

## 📥 Paso 3: Descargar la APK

### 🎯 Método Visual (Más Fácil):

1. **Ve a tu repositorio** en GitHub
2. **Haz clic en la pestaña "Actions"** (junto a Code, Issues, etc.)
3. **Verás la lista de builds** - busca el más reciente con ✅ verde
4. **Haz clic en el build exitoso**
5. **Baja hasta la sección "Artifacts"**
6. **Haz clic en "medicamentos-tracker-apk"** para descargar

### 📱 Lo que descargarás:
- **Archivo**: `medicamentos-tracker-apk.zip`
- **Contiene**: `medicamentostracker-1.0-armeabi-v7a-debug.apk`
- **Tamaño**: ~15-20 MB
- **Compatible**: Android 5.0+ (API 21+)

## 📲 Paso 4: Instalar en tu Android

1. **Descomprime** el archivo `.zip` descargado
2. **Transfiere** la APK a tu teléfono Android
3. **En tu teléfono**:
   - Ve a Configuración → Seguridad
   - Activa **"Orígenes desconocidos"** o **"Instalar apps desconocidas"**
4. **Abre** el archivo APK desde tu teléfono
5. **Toca "Instalar"**

## 🔄 Actualizaciones Automáticas

Cada vez que hagas cambios y subas código:
```bash
git add .
git commit -m "Nueva funcionalidad agregada"
git push
```

GitHub Actions compilará automáticamente una nueva APK.

## 🆘 Si algo sale mal

### Build falla:
1. Ve a Actions → Build fallido
2. Revisa los logs rojos
3. Generalmente son errores de sintaxis en Python

### No aparece el artifact:
- Espera a que termine (icono ✅ verde)
- Refresca la página
- El artifact expira en 30 días

### APK no instala:
- Verifica que sea compatible (Android 5.0+)
- Asegúrate de habilitar "Orígenes desconocidos"
- Intenta reiniciar el teléfono

## 🎉 ¡Listo!

Tu app **Tracker de Medicamentos** estará instalada y funcionando en tu Android con:
- 💊 Gestión completa de medicamentos
- 🔔 Notificaciones con vibración
- 📊 Estadísticas y gráficas
- 📅 Calendario de medicamentos
- ✅ Checklist diario
