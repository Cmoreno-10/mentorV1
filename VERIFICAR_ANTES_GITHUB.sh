#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"

if [ ! -d node_modules ]; then
  npm install
fi

echo "[1/3] Validando contenido académico..."
npm run validate:content

echo "[2/3] Validando TypeScript..."
npm run typecheck

echo "[3/3] Generando build..."
npm run build

echo
echo "✓ Verificación completada."
echo "✓ Carpeta dist generada."
