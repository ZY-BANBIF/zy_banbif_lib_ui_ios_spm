
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
            exact: "4.6.1"
        )
    ],

    targets: [
        // XCFramework principal descargado desde Artifactory
        .binaryTarget(
            name: "zy_banbif_lib_ui_ios_spm",
            url: "https://repo.zytrust.com/artifactory/zy-mobile-maven/spm/banbif/ui/1.0.25/zy_banbif_lib_ui_ios_spm.xcframework.zip",
            checksum: "171b186d9aac50998f9920608624ed78211b1d843021f544881aefb4534d6636"
        ),

        // Target auxiliar para declarar Lottie dinámico
        .target(
            name: "zy_banbif_lib_ui_ios_spm_dependencies",
            dependencies: [
                .product(
                    name: "Lottie-Dynamic",
                    package: "lottie-ios"
                )
            ],
            path: "zy_banbif_lib_ui_ios_spm_dependencies"
        )
    ]
)
