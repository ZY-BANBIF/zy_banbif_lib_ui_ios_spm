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
            url: ["https://github.com", "airbnb", "lottie-spm.git"].joined(separator: "/"),
            from: "4.6.1"
        )
    ],

    targets: [
        // XCFramework principal descargado desde Artifactory
        .binaryTarget(
            name: "zy_banbif_lib_ui_ios_spm",
            url: "https://repo.zytrust.com/artifactory/zy-mobile-maven/spm/banbif/ui/1.0.22/zy_banbif_lib_ui_ios_spm.xcframework.zip",
            checksum: "c0da35ef22a50a8a0b82daacbb517856e01c97817fa122e4632b3cba377c4645"
        ),

        // Target auxiliar para declarar Lottie
        .target(
            name: "zy_banbif_lib_ui_ios_spm_dependencies",
            dependencies: [
                .product(
                    name: "Lottie",
                    package: "lottie-spm"
                )
            ],
            path: "zy_banbif_lib_ui_ios_spm_dependencies"
        )
    ]
)
