@echo off
title MENTOR 217 - Verificacion
cd /d "%~dp0"

echo ==========================================
echo      VERIFICACION MENTOR 217
echo ==========================================
echo.

where node >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Node.js no esta instalado.
    pause
    exit /b 1
)

if not exist node_modules (
    echo Instalando dependencias...
    call npm install
    if %errorlevel% neq 0 goto :error
)

echo.
echo [1/3] Validando contenido academico...
call npm run validate:content
if %errorlevel% neq 0 goto :error

echo.
echo [2/3] Validando TypeScript...
call npm run typecheck
if %errorlevel% neq 0 goto :error

echo.
echo [3/3] Generando build de produccion...
call npm run build
if %errorlevel% neq 0 goto :error

echo.
echo ==========================================
echo  VERIFICACION COMPLETADA CORRECTAMENTE
echo ==========================================
echo.
echo La carpeta dist ya esta lista.
pause
exit /b 0

:error
echo.
echo ==========================================
echo  SE ENCONTRO UN ERROR EN LA VERIFICACION
echo ==========================================
pause
exit /b 1
