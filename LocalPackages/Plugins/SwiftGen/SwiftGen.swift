import PackagePlugin

@main
struct SwiftGenPlugin: BuildToolPlugin {
    func createBuildCommands(context: PluginContext, target: Target) async throws -> [Command] {
        [
            .prebuildCommand(
                displayName: "Running SwiftGen",
                executable: try context.tool(named: "swiftgen").path,
                arguments: [
                    "config",
                    "run",
                    "--config", "\(context.package.directory.string)/.swiftgen.yml"
                ],
                environment: [
                    "OUTPUT_DIR": context.pluginWorkDirectory.string // ①
                ],
                outputFilesDirectory: context.pluginWorkDirectory
            )
        ]
    }
}
