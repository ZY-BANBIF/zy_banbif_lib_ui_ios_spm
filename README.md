# zy_banbif_lib_ui_ios_spm

Librería de componentes de interfaz de usuario (UI) para aplicaciones iOS, desarrollada y distribuida mediante **Swift Package Manager (SPM)**.

## Descripción

`zy_banbif_lib_ui_ios_spm` proporciona componentes visuales reutilizables para integrar funcionalidades de interfaz de usuario en aplicaciones iOS.

La librería incluye componentes personalizados, recursos gráficos, tipografías, animaciones y elementos visuales necesarios para mantener una experiencia de usuario consistente.

## Características

- Componentes UI reutilizables.
- Botones personalizados.
- Indicadores de carga (Loading).
- Animaciones mediante Lottie.
- Recursos gráficos y Assets.
- Tipografías integradas.
- Storyboards y componentes visuales.
- Distribución mediante Swift Package Manager.
- Compatibilidad con XCFramework.

## Requisitos

| Requisito | Versión |
|---|---|
| iOS | 15.0 o superior |
| Xcode | Compatible con Swift 5.9 |
| Swift | 5.9 o superior |
| Dependency Manager | Swift Package Manager |

## Instalación

### Swift Package Manager

1. Abrir el proyecto en Xcode.
2. Seleccionar **File → Add Package Dependencies**.
3. Ingresar la URL del repositorio:

```text
https://github.com/TU_USUARIO/zy_banbif_lib_ui_ios_spm.git
```

4. Seleccionar la versión que se desea integrar.
5. Agregar el producto:

```text
zy_banbif_lib_ui_ios_spm
```

### Package.swift

También se puede agregar directamente como dependencia:

```swift
dependencies: [
    .package(
        url: "https://github.com/TU_USUARIO/zy_banbif_lib_ui_ios_spm.git",
        exact: "1.0.0"
    )
]
```

Agregar el producto al target de la aplicación:

```swift
.target(
    name: "MyApp",
    dependencies: [
        .product(
            name: "zy_banbif_lib_ui_ios_spm",
            package: "zy_banbif_lib_ui_ios_spm"
        )
    ]
)
```

## Importación

Importar la librería en los archivos donde se requieran sus componentes:

```swift
import zy_banbif_lib_ui_ios_spm
```

## Componentes disponibles

La librería proporciona componentes reutilizables para la construcción de interfaces de usuario.

| Componente | Descripción |
|---|---|
| UIStandardButton | Botón estándar personalizado |
| Loading | Indicador de carga con soporte para animaciones |
| Recursos gráficos | Imágenes y Assets incluidos en el paquete |
| Animaciones | Animaciones integradas mediante Lottie |
| Tipografías | Fuentes personalizadas de la librería |

*La disponibilidad y configuración de cada componente dependerá de la implementación publicada.*

## Dependencias

| Dependencia | Versión |
|---|---|
| Lottie iOS | 4.4.1 |

## Recursos incluidos

La librería incorpora los siguientes recursos:

- Assets.xcassets
- Fonts
- Animations
- Storyboards
- Archivos de configuración

Estos recursos se distribuyen junto con la librería para evitar configuraciones adicionales en la aplicación consumidora.

## Versionamiento

La librería utiliza versionamiento semántico (Semantic Versioning).

Formato:

```text
MAJOR.MINOR.PATCH
```

Ejemplos:

| Versión | Descripción |
|---|---|
| 1.0.0 | Primera versión estable |
| 1.0.1 | Corrección de errores |
| 1.1.0 | Nuevas funcionalidades |
| 2.0.0 | Cambios incompatibles |

Las versiones se publican mediante Git Tags en el repositorio.

## Compatibilidad

La librería está diseñada para integrarse en proyectos iOS que utilicen Swift Package Manager y cumplan con los requisitos mínimos establecidos.

## Soporte

Para consultas, incidencias o solicitudes relacionadas con la librería, contactar al equipo responsable de desarrollo y mantenimiento.

---

**ZYTRUST**  
iOS UI Library  
`zy_banbif_lib_ui_ios_spm`