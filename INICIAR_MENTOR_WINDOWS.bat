@echo off
title MENTOR 217 - Prueba Local
cd /d "%~dp0"

echo ==========================================
echo        MENTOR 217 - PRUEBA LOCAL
echo ==========================================
echo.

where node >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Node.js no esta instalado o no esta en PATH.
    echo Instala Node.js 22 LTS y vuelve a ejecutar este archivo.
    pause
    exit /b 1
)

echo [1/3] Verificando Node.js...
node -v
npm -v
echo.

if not exist node_modules (
    echo [2/3] Instalando dependencias por primera vez...
    call npm install
    if %errorlevel% neq 0 (
        echo.
        echo [ERROR] Fallo npm install.
        pause
        exit /b 1
    )
) else (
    echo [2/3] Dependencias ya instaladas.
)

echo.
echo [3/3] Iniciando MENTOR...
echo.
echo Cuando aparezca la URL, abre:
echo http://localhost:5173
echo.
echo Para detener el servidor presiona Ctrl+C.
echo ==========================================
echo.

call npm run dev -- --host 0.0.0.0

pause
