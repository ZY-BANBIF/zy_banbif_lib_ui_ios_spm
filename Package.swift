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
            url: "https://repo.zytrust.com/artifactory/zy-mobile-maven/spm/banbif/ui/1.0.2/zy_banbif_lib_ui_ios_spm.xcframework.zip",
            checksum: "4b558ddb385cd372dc1f656f5f78dec9d93f3afd5245c881f2e7876496aaf130"
        )
    ]
)
