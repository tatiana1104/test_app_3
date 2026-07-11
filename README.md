# Pack & Go (test_app_3)

Aplicación Flutter de ejemplo para gestionar envíos / viajes. Incluye pantallas de **Splash**, **Iniciar sesión**, **Registro** y **Recuperación de contraseña**.

---

## Requisitos
- Flutter SDK (compatible con Dart 3.x)
- Dispositivo/emulador configurado (Android/iOS)

---

## Instalación
Desde la raíz del proyecto:

```bash
flutter pub get
```

---

## Ejecución
```bash
flutter run
```

Para correr en un target específico:
```bash
flutter run -d <device_id>
```

---

## Arquitectura (estructura del código)
- `lib/main.dart`
  - Inicializa la app y define el `MaterialApp`.
  - Carga como pantalla inicial: `SplashScreen`.

- `lib/screens/`
  - `splash_screen.dart`: splash con navegación hacia `SignInScreen` tras 3 segundos.
  - `sign_in_screen.dart`: formulario de inicio de sesión (email/contraseña) + navegación a registro/recuperación.
  - `sign_up_screen.dart`: formulario de registro (nombre, email, contraseñas, género y fecha de nacimiento).
  - `recovery_password_screen.dart`: pantalla para solicitar recuperación de contraseña.

---

## Convenciones de commits
Se usa **Conventional Commits**:
- `feat:` nueva funcionalidad
- `fix:` corrección de errores
- `docs:` documentación
- `style:` formato/estilos
- `refactor:` refactor/restructuración
- `test:` tests
- `chore:` tareas de mantenimiento

---

## Historial de cambios
Ver `CHANGELOG.md`.

