import PackageDescription

let package = Package(
    name: "Perfect-Authentication-Demo",
    dependencies: [
		.Package(url: "https://github.com/PerfectlySoft/Perfect-HTTPServer.git", majorVersion: 2),
		.Package(url: "https://github.com/PerfectlySoft/Perfect-Mustache.git", majorVersion: 2),
		.Package(url: "https://github.com/iamjono/JSONConfig.git", majorVersion: 0),
		.Package(url: "https://github.com/PerfectlySoft/Perfect-Authentication.git", majorVersion: 1),
		]

)
