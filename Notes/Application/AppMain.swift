import SwiftUI

@main
struct AppMain: App {

    init() {
        Backend.initialize()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
