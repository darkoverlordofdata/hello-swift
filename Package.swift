// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

//https://github.com/apple/swift-package-manager/blob/263171977ebcd47f4aaca1202cff5a96c5158a64/Documentation/Usage.md#import-system-libraries

import PackageDescription

let package = Package(
    name: "hello-swift",
    products: [
        .executable(name: "hello-swift", targets:["hello-swift"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/SwiftGL/OpenGL.git",
            .branch("master")
        ),        
        .package(
            url: "https://github.com/SwiftGL/Math.git",
            from: "2.2.0"
        ),        
        .package(
            url: "https://github.com/SwiftGL/Image.git",
            from: "2.2.0"
        ),        
        .package(
            url: "https://github.com/SwiftGL/CGLFWLinux.git",
            .branch("master")
        ),        
    ],
    targets: [
        .target(
            name: "hello-swift",
            dependencies: ["SGLMath", "SGLImage", "SGLOpenGL"]),
        .testTarget(
            name: "hello-swiftTests",
            dependencies: ["hello-swift"]),
    ]
)
