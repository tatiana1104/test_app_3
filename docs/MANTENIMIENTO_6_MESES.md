# Propuesta de mantenimiento (6 meses)

> Objetivo: asegurar estabilidad, calidad de código y preparación de releases.

---

## Supuestos
- Proyecto Flutter multi-plataforma (Android/iOS y otros generados por Flutter).
- Repositorio con ramas tipo Git Flow:
  - `main` (producción)
  - `develop` (integración)
  - `feature/*`, `release/*`, `hotfix/*`

---

## Roadmap por meses

### Mes 1 — Estabilización y calidad base
- **1.1** Correcciones de compilación/test
  - Asegurar que `flutter test` pase en CI/local.
  - Ajustar/normalizar el test para que use widgets/clases reales del proyecto.
- **1.2** Limpieza de análisis
  - Reducir warnings de `flutter analyze` (deprecaciones, etc.).
  - Revisar `analysis_options.yaml` y convenciones de lint.
- **1.3** Documentación mínima
  - Extender `README.md` con comandos y flujo Git Flow.
  - Confirmar que `docs/DIAGRAMS.md` sigue siendo válido.
- **1.4** Evidencias
  - Guardar capturas o artefactos (por ejemplo, en `assets/`) como respaldo de `flutter analyze/test`.

Entregable:
- `develop` verde (sin errores) y test ejecutable.

---

### Mes 2 — Preparación de release
- **2.1** Crear `release/*`
  - Congelar cambios de features.
  - Asegurar que solo entren fixes de bajo riesgo.
- **2.2** Pruebas recomendadas
  - `flutter test` completo.
  - `flutter analyze` sin errores.
  - Prueba manual rápida: navegación Splash → SignIn → SignUp/Recovery.
- **2.3** Versionado y changelog
  - Actualizar `CHANGELOG.md`.
  - Crear tag de release.

Entregable:
- Rama `release/*` lista para merge a `main`.

---

### Mes 3 — Hardening (UX, navegación y casos borde)
- **3.1** Validaciones de formulario
  - Validar email, contraseña, campos obligatorios, consistencia (p.ej. repetir contraseña).
- **3.2** Manejo de estados
  - Estados de carga y errores para acciones (login/register/recovery), aunque sea mock.
- **3.3** Navegación
  - Revisar que el back stack sea correcto (pop/push).

Entregable:
- Mejor UX y menos navegación errática.

---

### Mes 4 — Automatización y CI
- **4.1** Automatizar
  - Ejecutar `flutter analyze` y `flutter test` en cada PR (si hay CI).
  - Generar reporte y almacenar artefactos.
- **4.2** Cobertura de tests
  - Expandir tests de widgets (smoke tests adicionales por pantalla).

Entregable:
- Pipeline confiable y regresiones detectadas temprano.

---

### Mes 5 — Refactor controlado
- **5.1** Refactor por mantenimiento
  - Extraer widgets repetidos (campos de texto, botones, chips de género, etc.).
- **5.2** Rendimiento (UI)
  - Evitar reconstrucciones innecesarias.
- **5.3** Estándares de estilo
  - Formato consistente (dart format) y linting.

Entregable:
- Código más mantenible sin cambiar comportamiento.

---

### Mes 6 — Preparación final de release y revisión
- **6.1** `release/*` final
  - Ajustar cualquier hotfix de última hora.
- **6.2** Revisión integral
  - Revisar tickets/pendientes.
  - Confirmar diagramas y documentación actualizados.
- **6.3** Hotfix si aplica
  - Para producción: `hotfix/*` basado en fallos urgentes.

Entregable:
- Release estable a `main` y cierre del ciclo.

---

## Convenciones de commits (para trazabilidad)
- `feat:` nueva funcionalidad
- `fix:` corrección
- `docs:` documentación
- `style:` cambios de formato/estilo
- `refactor:` refactor sin cambio funcional
- `test:` tests
- `chore:` mantenimiento

---

## Estructura recomendada (Git Flow)
- `feature/*` → `develop`
- `develop` → `release/*` → `main`
- `hotfix/*` → `main` (y merge de regreso a `develop`)

---

## Criterios de aceptación (Quality Gate)
- `flutter analyze` sin errores.
- `flutter test` exitoso.
- Navegación básica validada (Splash → SignIn → SignUp/Recovery).
- Documentación y diagramas consistentes.

