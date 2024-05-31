//
//  CinemateApp.swift
//  Cinemate
//
//  Created by Lochan on 15.03.2024.
//

import SwiftUI
import SwiftData

@main
struct CinemateApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.modelContainer(for: MovieDataItem.self)
    }
}
