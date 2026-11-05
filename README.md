# MENTOR 217 — Academia Intensiva v3

Versión estática para GitHub Pages, enfocada en preparación rigurosa para la Convocatoria 217-2026.

## Núcleo académico

- 9 dominios
- 135 conceptos nucleares
- 54 lecciones
- 540 preguntas principales
- 270 flashcards
- 18 casos integradores largos
- 30 retos avanzados (estadística, SQL, data engineering)
- 9 mapas mentales interactivos
- 10 fichas normativas guiadas
- ruta de estudio de 16 semanas
- biblioteca de 16 fuentes oficiales/técnicas
- bitácora de errores, confianza, simulacros y progreso

## Nuevos módulos v3

- `Ruta 16 semanas`
- `Mapas mentales`
- `Casos`
- `Retos`
- `Normativa`

## Persistencia

Todo se guarda en `localStorage` bajo `mentor217_state_v1`. El estado se migra a schema v3 sin perder datos previos.

## Importante

El banco y los simulacros son material pedagógico. La distribución interna no representa una ponderación oficial del examen.

## Ejecutar

```bash
npm install
npm run validate:content
npm run typecheck
npm run dev
```

## GitHub Pages

El workflow `.github/workflows/deploy-pages.yml` valida contenido, ejecuta typecheck/build y publica `dist`.
