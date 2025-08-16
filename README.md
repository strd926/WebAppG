# WebAppG - Gestión de Eventos

Su objetivo es proporcionar una plataforma para gestionar eventos, permitiendo a los usuarios registrarse, iniciar sesión, ver eventos, y a los administradores crear y eliminar eventos. La aplicación implementa autenticación y autorización mediante filtros para restringir el acceso a ciertas funcionalidades según el rol del usuario (USER o ADMIN)

## Funcionalidades (Basadas en el documento de requerimientos en Classroom)
- **Registro de usuarios**: Los usuarios pueden registrarse con un correo, contraseña, nombre y rol (USER o ADMIN).
- **Inicio de sesión**: Autenticación de usuarios con correo y contraseña, almacenando la sesión con atributos como `auth` y `role`.
- **Gestión de eventos**:
    - Los usuarios autenticados pueden ver una lista de eventos en `/events`.
    - Los administradores pueden crear nuevos eventos en `/admin/events` y eliminar eventos existentes.
- **Cierre de sesión**: (No solicitada en el documento) Los usuarios pueden cerrar sesión, invalidando su sesión y redirigiéndolos a la página de inicio de sesión.
- **Seguridad**:
    - `AuthFilter`: Restringe el acceso a `/events` y `/admin/*` a usuarios autenticados.
    - `AdminFilter`: Limita las rutas `/admin/*` a usuarios con rol ADMIN.
- Los datos de usuarios y eventos se almacenan en memoria (no persisten entre reinicios).

## Integrantes

- Marlon Estuardo Pappa Hernandez
- Jonathan Javier Soberanis Castillo
- Kennet Anderson Santisteban Torres
- Gustavo Adolfo Ortiz Gutiérrez
- Javier Augusto Estrada Gordillo

