# Misiones para probar el mockup de MiEnvio.es

Estas misiones buscan observar cómo las personas resuelven tareas por sí mismas. Se entrega **una misión cada vez**, sin indicar botones, menús ni pasos. Los datos y resultados esperados de la segunda parte son solo para quien modera la prueba.

## Texto inicial para todas las personas participantes

> Estamos probando el sitio, no tus conocimientos. Algunas funciones son simuladas. Mientras haces cada tarea, cuéntame qué buscas, qué esperas encontrar y qué te genera dudas. Si algo no se entiende, eso nos ayuda a mejorar el mockup.

Usa únicamente los datos ficticios que te entreguemos. No introduzcas información personal ni documentos reales.

---

## Misiones como cliente

### C1. Crear tu perfil

> Necesitas contratar un transporte y todavía no tienes cuenta en MiEnvio.es. Crea tu acceso como cliente para poder gestionar un envío.

**Datos para la misión:** nombre «Lucía Martín», teléfono «612 345 678», correo ficticio `lucia01@example.test` y contraseña de prueba `Demo1234!`. Quien modera puede cambiar el número del correo para cada participante.

### C2. Publicar una necesidad de transporte

**Punto de partida:** después de C1, con el perfil cliente recién creado. Si se prueba C2 por separado, quien modera abre antes `ESC-03`.

> Necesitas enviar **12 cajas de libros** desde **Salamanca (37001)** hasta **A Coruña (15001)**. La recogida podría ser el **1 de octubre de 2026** y la entrega el **15 de octubre de 2026**. Deja publicada tu necesidad para recibir propuestas.

**Datos de la carga:** 12 cajas iguales; cada caja pesa aproximadamente **18 kg** y mide **50 × 35 × 35 cm**. Se recogen a pie de calle.

### C3. Responder una pregunta

> Ya publicaste un anuncio para transportar una mesa de comedor y seis sillas. Un transportista quiere saber si es posible recoger a primera hora. Responde que sí.

### C4. Elegir una propuesta

> Para el transporte de la mesa y las seis sillas, buscas una propuesta de **300 € como máximo**, con fecha de trabajo el **20 de septiembre de 2026**. Revisa las propuestas recibidas y elige una que cumpla esas condiciones.

### C5. Retirar un anuncio — misión opcional

> Ya no necesitas transportar las 12 cajas de libros que aparecen entre tus anuncios. Retira ese anuncio para que deje de estar disponible.

### C6. Corregir el nombre de tu perfil

> En tu perfil de cliente aparece **Marta Ruiz**, pero quieres que figure **Marta Ruiz López**. Actualiza ese dato y comprueba que se guardó.

### C7. Revisar una mudanza con varios artículos y fotos

> Tienes una **Mudanza de vivienda** publicada de **Madrid a Valencia**. Revisa el anuncio y comprueba que puedes distinguir qué artículos se transportan y ver la foto de cada uno.

### C8. Publicar una mudanza con fotos — misión opcional

> Necesitas organizar una mudanza de **Madrid a Valencia**. Publica un anuncio con **1 mesa, 6 sillas, 1 frigorífico y 2 armarios**. Añade una foto a los artículos usando las imágenes que te entregue quien modera la prueba.

**Datos para la misión:** código postal de origen `28013`, código postal de destino `46001`. Las imágenes de referencia son `mesa.png`, `silla.png`, `refri.png` y `armario.png`.

---

## Misiones como transportista

### T1. Explorar oportunidades

> Trabajas en transporte y tienes espacio para llevar muebles de **Barcelona a Alicante**. Averigua si hay alguna oportunidad que pueda interesarte.

### T2. Solicitar el alta

> Tu empresa quiere empezar a ofrecer servicios en MiEnvio.es. Crea el perfil transportista y presenta la solicitud necesaria para poder participar.

**Datos para la misión:** razón social «Ruta Norte Pruebas S.L.», CIF `B12345678`, dirección «Calle Mayor 12, 28013 Madrid», teléfono «612 345 679», correo ficticio `rutanorte01@example.test`, contraseña de prueba `Demo1234!`, dos furgonetas y tres empleados. Quien modera entrega también dos archivos de prueba: un certificado censal y una autorización de transporte. No se usan documentos reales.

### T3. Buscar y enviar una propuesta

> Eres el transportista identificado como **TR-204** y tu alta ya fue aprobada. Te interesa una carga de **muebles de Madrid a Valencia**, prevista entre el **18 y el 20 de septiembre de 2026**. Revísala y, si encaja, presenta una propuesta de **280 €**.

### T4. Conservar una búsqueda — misión opcional

> La ruta **Madrid–Valencia** te interesa para futuros servicios. Deja guardados los criterios que acabas de utilizar para poder consultarlos otro día.

### T5. Revisar un trabajo conseguido

> Hace un tiempo presentaste varias propuestas. Averigua cuál fue aceptada para transportar una **moto clásica** y qué comisión se registró por ese trabajo.

### T6. Hacer una pregunta sobre un anuncio

> Te interesa transportar un **sofá modular de Barcelona a Alicante**. Antes de decidir si enviar un presupuesto, necesitas saber si los tres módulos estarán desmontados y listos para cargar. Plantea esa pregunta al cliente.

### T7. Consultar facturas y comisiones

> Quieres revisar los servicios aceptados en **septiembre de 2026**. Averigua a cuáles se les generó una comisión y cuánto suman las comisiones de ese mes.

### T8. Corregir la razón social de tu perfil

> En tu perfil transportista figura **Rutas Camino Sur S.L.**, pero la razón social correcta para esta prueba es **Rutas Camino Sur y Costa S.L.**. Actualiza ese dato y comprueba que se guardó.

### T9. Enviar una propuesta con un rango de fechas

> Eres el transportista identificado como **TR-204** y vas a presupuestar la **Mudanza de vivienda** de **Madrid a Valencia**. Propón realizar el trabajo entre el **10 y el 12 de octubre de 2026**, por **920 €**, y deja la propuesta válida hasta el **5 de octubre de 2026**.

---

## Preparación para quien modera la prueba

**No mostrar esta sección a las personas participantes.** Configura el punto de partida antes de leer cada misión. El selector «Vista de prueba» y «Reiniciar datos» son controles del prototipo; no forman parte de las tareas.

| Misiones | Punto de partida recomendado | Qué permite observar |
| --- | --- | --- |
| C1–C2 | `ESC-01 · Landing pública · Clientes`, con datos restablecidos | Si descubre cómo identificarse, completar el perfil y publicar. |
| C3–C8 | `ESC-03 · Solo perfil cliente · Panel`, con datos restablecidos | Si encuentra sus anuncios, responde, compara propuestas, retira un anuncio, edita su perfil y publica o revisa una mudanza con fotos. |
| T1 | `ESC-02 · Landing pública · Transportistas`, sin sesión | Si encuentra la lista pública y entiende qué puede consultar sin entrar. |
| T2 | `ESC-02 · Landing pública · Transportistas`, con datos restablecidos | Si entiende el registro del perfil y la solicitud de alta. |
| T3–T9 | `ESC-04 · Solo perfil transportista · Aprobado`, con datos restablecidos | Si encuentra una oportunidad, presenta propuestas con fechas, pregunta, consulta comisiones y edita su perfil. |

### Resultados de referencia

- **C3:** el anuncio de la mesa tiene una pregunta pendiente sobre la recogida a primera hora.
- **C4:** la propuesta `P-241` es de **295 €**, con fechas de trabajo del **20 al 20 de septiembre de 2026**. Hay otras propuestas que permiten observar si la persona compara precio, fechas y estado.
- **C5:** el anuncio de las cajas está Activo al iniciar el escenario `ESC-03`.
- **C6:** el perfil cliente comienza con el nombre **Marta Ruiz**.
- **T1:** hay un anuncio Activo de un sofá modular de **Barcelona a Alicante**, sin fechas definidas.
- **T3:** el anuncio de la mesa y seis sillas está Activo en la ruta **Madrid–Valencia**; `TR-204` puede presentar más de una propuesta al mismo anuncio.
- **T5:** el presupuesto aceptado para la moto clásica es `P-220`, por **520 €**, con **52 €** de comisión.
- **T6:** el sofá modular corresponde a un anuncio Activo de **Barcelona a Alicante**. La persona puede publicar una pregunta nueva con `TR-204` aprobado.
- **T7:** en septiembre de 2026 hay dos comisiones para `TR-204`: **52 €** por la moto clásica y **68,50 €** por la moto de colección; suman **120,50 €**. El mockup muestra un resumen mensual, no una factura fiscal descargable.
- **T8:** el perfil transportista comienza con la razón social **Rutas Camino Sur S.L.**.
- **C7:** el anuncio **A-116, Mudanza de vivienda**, contiene una mesa, seis sillas, un frigorífico y dos armarios. Tiene fotos en los cuatro tipos de artículo y presupuestos activos.
- **C8:** las fotos se asocian al artículo concreto al que se suben; al quitar un artículo, su foto también desaparece. El anuncio no se publica si se intenta usar un formato no admitido o una foto de más de 10 MB.
- **T9:** la propuesta nueva conserva por separado el rango de trabajo **10–12 de octubre de 2026** y su vencimiento del **5 de octubre de 2026**.

### Reglas prácticas de preparación

1. Restablece los datos antes de cada participante y antes de las misiones que requieren el escenario inicial indicado en la tabla.
2. **No encadenes C2 con C4 sobre el anuncio recién creado:** el mockup no genera propuestas para ese anuncio. Presenta C3–C7 como una situación posterior con datos ya existentes. Para C8, empieza con los datos restablecidos y considera la publicación como una misión independiente.
3. **No encadenes T2 con T3 como si la aprobación fuese automática:** cambia al escenario aprobado entre misiones y explica solamente: «Tu alta ya ha sido aprobada; continuamos unos días después».
4. Entrega los datos ficticios y los archivos de prueba antes de la misión correspondiente. Para C7, A-116 ya debe existir; para C8, entrega las imágenes sin indicar en qué artículo debe colocarse cada una. No entregues las respuestas ni los nombres de las pantallas.
5. Si se usa la web pública para las sesiones, verifica primero que contiene la versión del mockup que deseas evaluar.

## Registro breve de observación

Para cada misión, anota:

| Misión | Completó sin ayuda / con ayuda / no completó | Primer lugar al que fue | Dudas, errores o retrocesos | Comentarios textuales |
| --- | --- | --- | --- | --- |
| | | | | |

Al terminar cada misión puedes preguntar: **«¿Qué esperabas que pasara?»** o **«¿Hubo algo que te hiciera dudar?»**. Evita explicar el funcionamiento durante la tarea, salvo que la persona no pueda continuar por una limitación del prototipo.
