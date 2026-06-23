// swift-tools-version: 5.4

import PackageDescription

let package = Package(
	name: "SwiftImageReadWriteKit",
	platforms: [
		.macOS(.v10_11),
		.iOS(.v11),
		.tvOS(.v13),
		.watchOS(.v4)
	],
	products: [
		.library(
			name: "SwiftImageReadWriteKit",
			targets: ["SwiftImageReadWriteKit"]),
	],
	dependencies: [
	],
	targets: [
		.target(
			name: "SwiftImageReadWriteKit",
			path: "Sources/SwiftImageReadWriteKit",
			resources: [
				.copy("PrivacyInfo.xcprivacy"),
			]
		),
		.testTarget(
			name: "SwiftImageReadWriteKitTests",
			dependencies: ["SwiftImageReadWriteKit"],
			resources: [
				.process("resources"),
			]
		)
	]
)
