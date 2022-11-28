import PackagePlugin

@main
struct SwiftLintPlugin: BuildToolPlugin {
    func createBuildCommands(context: PluginContext, target: Target) async throws -> [Command] {
        // If want to run lint when specific target, use code below.
//        if target.name != "CommonPackage" { return [] }
        return [
            .buildCommand(
                displayName: "Linting \(target.name)",
                // `targeKt.directory.string` is the directory SwiftLint.swift is located.
                // Set custom swiftlint script path
                executable: Path("\(target.directory.string)/../../../Scripts/swiftlint.sh"),
                arguments: [
                    // Set `swiftlint` command path
                    try context.tool(named: "swiftlint").path,
                    // Set `.swiftlint.yml` file directory path
                    "\(target.directory.string)/../.."
                ],
                environment: [:]
            )
        ]
    }
}
