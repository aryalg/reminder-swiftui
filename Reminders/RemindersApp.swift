//
//  RemindersApp.swift
//  Reminders
//
//  Created by Bikram Aryal on 11/05/2022.
//

import SwiftUI

@main
struct RemindersApp: App {
    var body: some Scene {
        WindowGroup {
            let viewContext = CoreDataManager.shared.persistentContainer.viewContext;
            HomeScreen().environment(\.managedObjectContext, viewContext)
        }
    }
}
