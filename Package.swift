
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

        // XCFramework principal descargado desde Artifactory
        .binaryTarget(
            name: "zy_banbif_lib_ui_ios_spm",
            url: "https://repo.zytrust.com/artifactory/zy-mobile-maven/spm/banbif/ui/1.0.19/zy_banbif_lib_ui_ios_spm.xcframework.zip",
            checksum: "255ebd42f7e8013cc06afc4563445e87aafec0882da7842c21ca6523a2736ce0"
        ),

        // Target auxiliar para declarar Lottie
        .target(
            name: "zy_banbif_lib_ui_ios_spm_dependencies",
            dependencies: [
                .product(
                    name: "Lottie",
                    package: "lottie-ios"
                )
            ],
            path: "zy_banbif_lib_ui_ios_spm_dependencies"
        )
    ]
)
