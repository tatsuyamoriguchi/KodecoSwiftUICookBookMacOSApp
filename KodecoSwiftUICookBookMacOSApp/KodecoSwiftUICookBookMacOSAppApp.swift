//
//  KodecoSwiftUICookBookMacOSAppApp.swift
//  KodecoSwiftUICookBookMacOSApp
//
//  Created by Tatsuya Moriguchi on 7/4/24.
//

import SwiftUI
import SwiftData

@main
struct KodecoSwiftUICookBookMacOSAppApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
