
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
            url: "https://repo.zytrust.com/artifactory/zy-mobile-maven/spm/banbif/ui/1.0.26/zy_banbif_lib_ui_ios_spm.xcframework.zip",
            checksum: "d8dd27e65fac6bf28afeea5e76ec2472a15bc8c589f0a3c7bbac501404bbeaef"
        )
    ]
)
