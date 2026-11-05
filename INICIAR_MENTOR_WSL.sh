#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"

echo "=========================================="
echo "       MENTOR 217 - PRUEBA LOCAL"
echo "=========================================="

if ! command -v node >/dev/null 2>&1; then
  echo "[ERROR] Node.js no está instalado."
  exit 1
fi

echo "Node: $(node -v)"
echo "npm:  $(npm -v)"

if [ ! -d node_modules ]; then
  echo "Instalando dependencias..."
  npm install
fi

echo
echo "Iniciando MENTOR..."
echo "Abrir: http://localhost:5173"
echo "Detener: Ctrl+C"
echo
npm run dev -- --host 0.0.0.0
