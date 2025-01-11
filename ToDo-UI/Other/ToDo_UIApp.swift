//
//  ToDo_UIApp.swift
//  ToDo-UI
//
//  Created by FURKAN AYAZ on 11.01.2025.
//

import FirebaseCore
import SwiftUI

@main
struct ToDo_UIApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
