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
                "zy_banbif_lib_ui_ios_spm"
            ]
        )
    ],
    targets: [
        .binaryTarget(
            name: "zy_banbif_lib_ui_ios_spm",
            url: "https://repo.zytrust.com/artifactory/zy-mobile-maven/spm/banbif/ui/1.0.1/zy_banbif_lib_ui_ios_spm.xcframework.zip",
            checksum: "b2c429227c242c03810a11bf4cd62428c6f9bc06fc78675a4a6147114b0ab8a6"
        )
    ]
)
