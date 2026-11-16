
// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "zy_banbif_lib_ui_ios_spm",

    platforms: [
        .iOS(.v15)
    ],

    products: [
        .library(
            name: "zy_banbif_lib_ui_ios_spm",
            targets: [
                "zy_banbif_lib_ui_ios_spm",
                "zy_banbif_lib_ui_ios_spm_dependencies"
            ]
        )
    ],

    dependencies: [
        .package(
            url: "https://github.com/airbnb/lottie-ios.git",
            exact: "4.4.1"
        )
    ],

    targets: [

        // Framework principal descargado desde Artifactory
        .binaryTarget(
            name: "zy_banbif_lib_ui_ios_spm",
            url: "https://repo.zytrust.com/artifactory/zy-mobile-maven/spm/banbif/ui/1.0.13/zy_banbif_lib_ui_ios_spm.xcframework.zip",
            checksum: "1c4e3a3e41eb9e4a04f88d4ee13b196feb867fa18c28a1f69528a232c25172c9"
        ),

        // Dependencias auxiliares
        .target(
            name: "zy_banbif_lib_ui_ios_spm_dependencies",

            dependencies: [
                .product(
                    name: "Lottie",
                    package: "lottie-ios"
                )
            ],

            // Carpeta ubicada directamente en la raíz del repositorio
            path: "zy_banbif_lib_ui_ios_spm_dependencies"
        )
    ]
)
