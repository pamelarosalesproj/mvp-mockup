# MiEnvio.es · prototipo navegable

Este directorio contiene un mockup interactivo y autocontenido para validar pantallas, permisos y cambios de estado. Todos los datos son ficticios. No hay backend, autenticación real, envío de correos, pagos, subida de documentos ni conexiones externas.

## Cómo abrirlo

Abre `index.html` directamente en un navegador moderno. También puedes servir esta carpeta con cualquier servidor estático si tu navegador limita el almacenamiento local para archivos `file://`.

El selector gris **Modo prototipo**, separado de la cabecera de MiEnvio.es, cambia de actor y carga situaciones representativas. **Reiniciar datos** restaura anuncios, presupuestos, altas y comisiones al estado inicial. Los cambios se conservan en `localStorage` del navegador hasta reiniciarlos.

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
3. Selecciona **Transportista · Alta pendiente**. Puede buscar, abrir anuncios y leer presupuestos, pero los controles de preguntas y propuestas están deshabilitados.
4. Selecciona **Transportista · Alta rechazada**. Se muestra el motivo y un formulario de subsanación; al enviarlo, la solicitud vuelve a Pendiente.

### Administrador

1. Selecciona **Administrador**.
2. En **Altas de transportistas**, aprueba una solicitud o recházala indicando un motivo obligatorio. El prototipo refleja el resultado en la plataforma y simula el aviso por correo.
3. En **Configurar comisiones**, modifica límites o porcentajes. El último tramo permanece sin límite y las comisiones ya generadas no se recalculan.

## Correspondencia con los 15 flujos

| Flujo | Pantallas e interacción |
| --- | --- |
| F01 · Registro e inicio de cliente | **Crear una cuenta** o **Iniciar sesión** desde la pestaña de clientes → correo o Google simulado → completar nombre, teléfono y correo solo cuando falta algún dato → panel de cliente. |
| F02 · Alta de transportista | Crear cuenta → datos básicos → datos profesionales y documentación ficticia → **Enviar solicitud de alta** → Pendiente/Rechazada/Aprobada, subsanación y revisión administrativa. Completar datos profesionales no envía la solicitud. |
| F03 · Inicio de transportista | **Iniciar sesión** identifica alta no iniciada/incompleta, pendiente, rechazada o aprobada y muestra la pantalla y permisos correspondientes; iniciar sesión no cambia el estado. |
| F04 · Editar perfil | **Mi perfil**, con nombre, correo, teléfono y biografía; validación de datos de contacto en la biografía. |
| F05 · Publicar anuncio | **Publicar anuncio**, con categoría única, uno o dos elementos, peso, medidas, códigos postales, fechas específicas/flexibles y notas. |
| F06 · Buscar y guardar búsquedas | **Buscar anuncios**, filtros, estado vacío, guardado y reutilización de criterios. |
| F07 · Detalle del anuncio | Resultado → **Ver detalle**, con mercancía, preguntas y todos los presupuestos identificados por ID; contactos ocultos antes de aceptar. |
| F08 · Preguntas y respuestas | Sección pública del detalle; pregunta del transportista aprobado y respuesta del cliente propietario. |
| F09 · Eliminar anuncio | Anuncio propio Activo o Inactivo → confirmación → anuncio Eliminado y propuestas activas Inactivas. |
| F10 · Enviar presupuesto | Detalle activo → precio, fecha de trabajo opcional, vencimiento opcional y condiciones; admite varias propuestas del mismo transportista. |
| F11 · Aceptar presupuesto | Detalle del cliente → confirmación con todos los efectos → estados coherentes, contacto bilateral y comisión única. |
| F12 · Rechazar presupuesto | Detalle del cliente → motivo obligatorio; solo cambia la propuesta elegida. |
| F13 · Presupuestos enviados | **Mis presupuestos**, con estados, vencimiento y comisión cuando corresponde. |
| F14 · Configurar comisiones | Administración → **Configurar comisiones**, tramos editables, último tramo sin límite y aviso de no retroactividad. |
| F15 · Comisiones del mes | **Comisiones**, resumen y desglose por fecha de aceptación, sin pagos ni conciliación. |

## Suposiciones del prototipo pendientes de validar

- **Fechas flexibles:** se representan como un intervalo. Una búsqueda por fecha incluye el anuncio cuando la fecha cae dentro de ese intervalo. El PRD deja pendiente la regla definitiva.
- **Documentación española:** los nombres de documentos son ejemplos de interfaz; el prototipo no fija la lista válida ni almacena archivos.
- **Tramos iniciales:** se cargan los porcentajes ilustrativos del PRD y un último tramo abierto. No son tarifas comerciales definitivas.
- **Zona horaria:** la simulación usa el 7 de septiembre de 2026 como “hoy” y septiembre de 2026 como mes de consulta. La zona horaria de negocio sigue pendiente.
- **Visibilidad histórica:** el cliente ve sus anuncios Activos, Aceptados e Inactivos; la búsqueda del transportista muestra los Activos. La política histórica definitiva sigue pendiente.
- **Consulta sin sesión:** la pestaña pública de transportistas permite explorar los datos ficticios del listado y detalle, pero exige sesión aprobada para preguntar o presupuestar. El PRD no define todavía el acceso anónimo real.
- **Cobertura:** se aceptan códigos postales españoles de cinco dígitos, sin restringir todavía provincias o islas dentro de España.

No se detectó ninguna contradicción entre `prompt-mockup.md` y las reglas de negocio del PRD. Las decisiones abiertas anteriores se mantienen como supuestos de representación y no como reglas definitivas.

## Verificaciones realizadas

- Revisión completa del PRD y de la referencia visual de cabecera.
- Comprobación sintáctica del JavaScript.
- Revisión de las transiciones de aceptación, rechazo y eliminación y del cálculo no progresivo de comisión.
- Revisión estática de controles, etiquetas, foco visible, mensajes de error y estructura responsive para escritorio, tableta y móvil.
- Comprobación manual del arranque directo mediante `file://` realizada durante la construcción.

La automatización visual integrada del navegador no estuvo disponible en el entorno de construcción. La revisión final en tamaños reales debe completarse durante la sesión de validación con producto.
