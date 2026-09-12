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

En el repositorio de GitHub, configura **Settings → Pages → Build and deployment → Source → GitHub Actions**. El workflow `.github/workflows/pages.yml` publica cada push a `main` o a `feature/dual-profile-access` y también permite ejecutarlo manualmente desde Actions. Comprueba la sintaxis JavaScript y sube solamente los tres archivos públicos y `.nojekyll`; no requiere secretos propios ni servicios externos.

La dirección de un repositorio de proyecto es `https://USUARIO.github.io/REPOSITORIO/`. CSS y JavaScript usan rutas relativas compatibles con esa subcarpeta. Las pantallas se cambian internamente sin modificar la URL; al recargar, el prototipo restaura el estado guardado en el navegador. No necesita reglas de reescritura, rutas de servidor ni una página 404 especial. Las pantallas individuales no tienen enlaces directos.

No introduzcas datos reales en este prototipo. Los datos introducidos se guardan en el navegador, no en GitHub. `.gitignore` excluye configuraciones locales, credenciales, dependencias y archivos generados; revisa siempre los cambios antes de publicarlos.