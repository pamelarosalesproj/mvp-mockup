# MiEnvio.es · prototipo navegable

Este directorio contiene un mockup interactivo y autocontenido para validar pantallas, permisos y cambios de estado. Todos los datos son ficticios. No hay backend, autenticación real, envío de correos, pagos, subida de documentos ni conexiones externas.

## Cómo abrirlo

Abre `index.html` directamente en un navegador moderno. También puedes servir esta carpeta con cualquier servidor estático si tu navegador limita el almacenamiento local para archivos `file://`.

El selector gris **Modo prototipo**, separado de la cabecera de MiEnvio.es, cambia de actor y carga situaciones representativas. **Reiniciar datos** restaura anuncios, presupuestos, altas y comisiones al estado inicial. Los cambios se conservan en `localStorage` del navegador hasta reiniciarlos.

## Desarrollo y publicación

El proyecto usa HTML, CSS y JavaScript nativos, sin dependencias ni paso de compilación. Los archivos fuente son `index.html`, `styles.css` y `app.js`.

Para ejecutarlo con Python 3:

```sh
python3 -m http.server 8000 --bind 127.0.0.1
```

Abre `http://127.0.0.1:8000`. Para preparar exclusivamente los archivos públicos:

```sh
sh scripts/build.sh
python3 -m http.server 8000 --bind 127.0.0.1 --directory _site
```

`_site/` es una salida generada y no se versiona. El antiguo `dist/` y `.openai/` son archivos locales de la publicación anterior en Sites, no necesarios para GitHub Pages.

### GitHub Pages

En el repositorio de GitHub, configura **Settings → Pages → Build and deployment → Source → GitHub Actions**. El workflow `.github/workflows/pages.yml` publica cada push a `main` y también permite ejecutarlo manualmente desde Actions. Comprueba la sintaxis JavaScript y sube solamente los tres archivos públicos y `.nojekyll`; no requiere secretos propios ni servicios externos.

La dirección de un repositorio de proyecto es `https://USUARIO.github.io/REPOSITORIO/`. CSS y JavaScript usan rutas relativas compatibles con esa subcarpeta. Las pantallas se cambian internamente sin modificar la URL; al recargar, el prototipo restaura el estado guardado en el navegador. No necesita reglas de reescritura, rutas de servidor ni una página 404 especial. Las pantallas individuales no tienen enlaces directos.

No introduzcas datos reales en este prototipo. Los datos introducidos se guardan en el navegador, no en GitHub. `.gitignore` excluye configuraciones locales, credenciales, dependencias y archivos generados; revisa siempre los cambios antes de publicarlos.

## Recorridos de demostración

### Cliente

1. Selecciona **Cliente · Con varios presupuestos**.
2. Entra en **Mesa de comedor y 6 sillas** para comparar presupuestos activos, rechazados y caducados.
3. Rechaza un presupuesto: la justificación es obligatoria y el anuncio sigue activo.
4. Acepta otro: el anuncio y la propuesta elegida pasan a Aceptado; las demás propuestas activas pasan a Inactivo; las rechazadas y caducadas conservan su estado; aparece el contacto del transportista seleccionado y se crea una comisión.
5. Vuelve a **Mis anuncios** y abre **12 cajas de libros** para comprobar el estado sin presupuestos.
6. Usa **Publicar anuncio** para recorrer las validaciones, añadir un segundo elemento de la misma categoría y crear un anuncio Activo con cero presupuestos.
7. Para probar F01 selecciona **Visitante · Cliente**, pulsa **Crear una cuenta** desde la cabecera o entra en **Iniciar sesión** y usa el enlace de creación. Continúa con correo o con Google simulado. Nombre y teléfono son obligatorios en ambos métodos; una cuenta ya creada puede iniciar sesión directamente en el panel. El escenario **Cliente · Registro incompleto** simula una cuenta existente a la que le falta un dato obligatorio.

### Transportista aprobado

1. Selecciona **Transportista · Alta aprobada**.
2. Filtra anuncios por origen, destino, categoría o fecha; prueba una búsqueda sin resultados y guarda los criterios.
3. Abre **Mesa de comedor y 6 sillas**. Comprueba que se ven importes y condiciones de otros transportistas sin datos de contacto.
4. Publica una pregunta sin datos de contacto y envía uno o varios presupuestos. La fecha de trabajo y el vencimiento son opcionales. La propuesta enviada aparece en **Mis presupuestos** y no tiene acciones de edición o eliminación.
5. Abre **Moto clásica de 125 cc** desde **Mis presupuestos** para ver el contacto del cliente, habilitado porque la propuesta propia está aceptada.
6. En **Comisiones**, revisa el resumen de septiembre: usa la fecha de aceptación y no muestra estados de pago.
7. En **Mi perfil**, comprueba la edición de datos y la validación de la biografía contra teléfonos, correos o enlaces.

### Transportista pendiente o rechazado

1. Selecciona **Transportista · Alta no iniciada**. F03 dirige a **Completar alta**; completar los datos profesionales y marcar la documentación ficticia todavía no envía la solicitud.
2. Pulsa **Enviar solicitud de alta**. F02 registra el estado Pendiente y muestra el estado de revisión.
3. Selecciona **Transportista · Alta pendiente**. Puede buscar, abrir anuncios y leer presupuestos, pero los controles de preguntas y propuestas están deshabilitados. El aviso enlaza con **Mi perfil → Documentación y estado**.
4. Selecciona **Transportista · Alta rechazada**. Se muestra el motivo y un formulario de subsanación; al enviarlo, la solicitud vuelve a Pendiente. El mismo estado queda visible en **Documentación y estado**.

### Administrador

1. Selecciona **Administrador**.
2. En **Altas de transportistas**, aprueba una solicitud o recházala indicando un motivo obligatorio. El prototipo refleja el resultado en la plataforma y simula el aviso por correo.
3. En **Configurar comisiones**, modifica límites o porcentajes. El último tramo permanece sin límite y las comisiones ya generadas no se recalculan.
