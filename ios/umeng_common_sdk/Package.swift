// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "umeng_common_sdk",
  platforms: [
    .iOS(.v13)
  ],
  products: [
    .library(name: "umeng-common-sdk", targets: ["umeng_common_sdk"])
  ],
  dependencies: [
    .package(name: "FlutterFramework", path: "../FlutterFramework")
  ],
  targets: [
    .target(
      name: "umeng_common_sdk",
      dependencies: [
        .product(name: "FlutterFramework", package: "FlutterFramework"),
        "UMCommon",
        "UMDevice"
      ],
      path: "Sources/umeng_common_sdk",
      publicHeadersPath: ".",
      linkerSettings: [
        .linkedFramework("CoreTelephony"),
        .linkedFramework("SystemConfiguration"),
        .linkedLibrary("sqlite3"),
        .linkedLibrary("z")
      ]
    ),
    .binaryTarget(
      name: "UMCommon",
      url: "https://umplus-sdk-download.oss-cn-shanghai.aliyuncs.com/iOS/UMCommon/UMCommon_7.5.11.zip",
      checksum: "405a008abadf6fb20b7eeb94666610fa78c41f01e6976bc66c1d6abdfd60c5f8"
    ),
    .binaryTarget(
      name: "UMDevice",
      url: "https://umplus-sdk-download.oss-cn-shanghai.aliyuncs.com/iOS/UMDevice/UMDevice_3.6.0.zip",
      checksum: "d2cda7bec252a5a425cbf079589147854ca56afaa007adcc2c25f7ed8cbde04c"
    )
  ]
)
