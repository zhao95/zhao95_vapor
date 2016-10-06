import PackageDescription

let package = Package(
    name: "ZNVapor",
    
    
    
    dependencies: [
        .Package(url: "https://github.com/vapor/vapor.git", majorVersion: 1, minor: 0),
        .Package(url: "https://github.com/vapor/mysql-provider.git", majorVersion: 1, minor: 0),
    ],
    
    exclude: [
        "Config",
        "Database",
        "Localization",
        "Public",
        "Resources",
        "Tests",
    ]
)

