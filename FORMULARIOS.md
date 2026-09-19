# Formularios del mockup

Inventario visual de los formularios actualmente representados en el mockup. Las descripciones son funcionales y breves; no sustituyen al PRD ni definen una implementación. En «¿Obligatorio?», **Sí** indica que el campo editable lleva `*`; **No** indica que no lo lleva.

| Formulario | Campo | Descripción | ¿Obligatorio? |
| --- | --- | --- | --- |
| Acceso por email (`login-email`) | Correo electrónico | Email que identifica la cuenta para continuar con el acceso o el registro. | Sí |
| Acceso con contraseña (`login-password`) | Email de acceso | Cuenta identificada previamente; se muestra en solo lectura. | No |
| Acceso con contraseña (`login-password`) | Contraseña | Credencial simulada de una cuenta existente. | Sí |
| Registro de cuenta (`register-email`) | Email de acceso | Email de la nueva cuenta. Este formulario existe en el mockup como recorrido alternativo. | Sí |
| Registro de cuenta (`register-email`) | Nueva contraseña | Contraseña de la nueva cuenta. | Sí |
| Completar perfil (`complete-registration`) | Nueva contraseña | Se muestra cuando el email es nuevo y permite completar la credencial de la cuenta. | Sí |
| Completar perfil cliente (`complete-registration`) | Nombre completo | Nombre del perfil cliente. | Sí |
| Completar perfil cliente (`complete-registration`) | Teléfono | Teléfono del perfil cliente. | Sí |
| Completar perfil transportista (`complete-registration`) | Nombre o razón social | Identificación del transportista. | Sí |
| Completar perfil transportista (`complete-registration`) | CIF / NIF | Documento identificativo del transportista. | Sí |
| Completar perfil transportista (`complete-registration`) | Teléfono | Teléfono del perfil transportista. | Sí |
| Completar perfil transportista (`complete-registration`) | Calle | Calle de la dirección de facturación. | Sí |
| Completar perfil transportista (`complete-registration`) | Número | Número de la dirección de facturación. | Sí |
| Completar perfil transportista (`complete-registration`) | Código postal | Código postal de la dirección de facturación. | Sí |
| Completar perfil transportista (`complete-registration`) | Ciudad | Ciudad de la dirección de facturación. | Sí |
| Completar perfil transportista (`complete-registration`) | Provincia | Provincia de la dirección de facturación. | No |
| Editar perfil cliente (`client-profile`) | Nombre completo | Nombre editable del perfil cliente. | Sí |
| Editar perfil cliente (`client-profile`) | Teléfono | Teléfono editable del perfil cliente. | Sí |
| Editar perfil cliente (`client-profile`) | Correo de contacto | Correo editable que pertenece al perfil cliente. | Sí |
| Editar perfil cliente (`client-profile`) | Biografía | Texto opcional sobre el perfil cliente. | No |
| Editar perfil transportista (`profile`) | Nombre o razón social | Nombre editable del perfil transportista. | Sí |
| Editar perfil transportista (`profile`) | Número de documento (CIF / NIF) | Documento del perfil transportista. | Sí |
| Editar perfil transportista (`profile`) | Teléfono | Teléfono del perfil transportista. | Sí |
| Editar perfil transportista (`profile`) | Correo de contacto | Correo editable propio del perfil transportista. | Sí |
| Editar perfil transportista (`profile`) | Calle | Calle de facturación. | Sí |
| Editar perfil transportista (`profile`) | Número | Número de facturación. | Sí |
| Editar perfil transportista (`profile`) | Código postal | Código postal de facturación. | Sí |
| Editar perfil transportista (`profile`) | Ciudad | Ciudad de facturación. | Sí |
| Editar perfil transportista (`profile`) | Provincia | Provincia de facturación. | No |
| Editar perfil transportista (`profile`) | Biografía | Descripción profesional del transportista. | No |
| Editar perfil transportista (`profile`) | Número de furgonetas | Capacidad declarada de vehículos. | Sí |
| Editar perfil transportista (`profile`) | Número de empleados | Tamaño declarado de la operación. | Sí |
| Alta profesional (`onboarding`) | Biografía | Experiencia y tipo de transporte. | No |
| Alta profesional (`onboarding`) | Número de furgonetas | Capacidad declarada de vehículos. | Sí |
| Alta profesional (`onboarding`) | Número de empleados | Tamaño declarado de la operación. | Sí |
| Alta profesional (`onboarding`) | Certificado de situación censal AEAT | Archivo documental obligatorio. | Sí |
| Alta profesional (`onboarding`) | Autorización de Transporte | Archivo documental obligatorio. | Sí |
| Alta profesional (`onboarding`) | Seguro de Mercancías | Archivo documental opcional. | No |
| Alta profesional (`onboarding`) | Otros documentos | Uno o más archivos adicionales. | No |
| Publicar anuncio (`publish`) | Nombre del anuncio | Título de la necesidad de transporte. | Sí |
| Publicar anuncio (`publish`) | Categoría | Tipo de mercancía o servicio. | Sí |
| Publicar anuncio (`publish`) | Artículo | Nombre de cada artículo transportado. | Sí |
| Publicar anuncio (`publish`) | Cantidad | Unidades del artículo. | Sí |
| Publicar anuncio (`publish`) | Peso aproximado | Peso del artículo en kilogramos. | Sí |
| Publicar anuncio (`publish`) | Largo, ancho y alto | Medidas aproximadas del artículo. | Sí |
| Publicar anuncio (`publish`) | Origen | Ciudad de recogida. | Sí |
| Publicar anuncio (`publish`) | Código postal de origen | Código postal de recogida. | Sí |
| Publicar anuncio (`publish`) | Destino | Ciudad de entrega. | Sí |
| Publicar anuncio (`publish`) | Código postal de destino | Código postal de entrega. | Sí |
| Publicar anuncio (`publish`) | Fechas específicas | Activa el uso de fechas concretas. | No |
| Publicar anuncio (`publish`) | Fecha inicial | Inicio del periodo de transporte. | No |
| Publicar anuncio (`publish`) | Fecha final | Fin del periodo de transporte. | No |
| Publicar anuncio (`publish`) | Notas | Indicaciones sobre accesos, embalaje u otra información útil. | No |
| Buscar anuncios (`search`) | Origen | Filtra por ciudad de origen. | No |
| Buscar anuncios (`search`) | Destino | Filtra por ciudad de destino. | No |
| Buscar anuncios (`search`) | Categoría | Filtra por tipo de mercancía. | No |
| Buscar anuncios (`search`) | Fecha de inicio | Límite inicial de búsqueda. | No |
| Buscar anuncios (`search`) | Fecha de fin | Límite final de búsqueda. | No |
| Pregunta del anuncio (`ask-question`) | Pregunta | Consulta pública sobre un anuncio. | Sí |
| Respuesta del anuncio (`answer`) | Responder | Respuesta a una pregunta del anuncio. | Sí |
| Presupuesto (`quote`) | Precio | Importe propuesto por el transportista. | Sí |
| Presupuesto (`quote`) | Fecha del trabajo | Fecha propuesta para realizar el transporte. | No |
| Presupuesto (`quote`) | Válido hasta | Fecha de vencimiento del presupuesto. | No |
| Presupuesto (`quote`) | Condiciones | Horario, medios y condiciones del servicio. | No |
| Configurar comisiones (`tiers`) | Desde: primer rango | El primer rango puede comenzar en cero sin informar el límite inferior. | No |
| Configurar comisiones (`tiers`) | Desde: demás rangos | Inicio de cada rango posterior. | Sí |
| Configurar comisiones (`tiers`) | Hasta: último rango abierto | El último rango puede quedar sin límite superior. | No |
| Configurar comisiones (`tiers`) | Hasta: demás rangos | Fin de cada rango anterior al último. | Sí |
| Configurar comisiones (`tiers`) | Comisión | Porcentaje aplicado al rango. | Sí |

Los formularios de carga documental, publicación y presupuestos usan datos simulados. Los botones, filtros y diálogos que no tienen `data-form` propio se consideran controles de la pantalla correspondiente.
