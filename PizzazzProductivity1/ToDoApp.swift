//
//  ToDoApp.swift
//  PizzazzProductivity1
//
//  Created by Scholar on 6/28/24.
//

import SwiftUI
import SwiftData


struct ToDoApp: App {
    var body: some Scene {
        WindowGroup {
            ToDoContentView()
                .modelContainer(for: ToDoItem.self)
        }
    }
}
