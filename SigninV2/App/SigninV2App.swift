//
//  SigninV2App.swift
//  SigninV2
//
//  Created by Гералд Бирген on 27.09.2020.
//

import SwiftUI

@main
struct SigninV2App: App {
    var body: some Scene {
        WindowGroup {
            let viewContext = CoreDataManager.shared.persistentStoreContainer.viewContext
            ContentView(vm:UsersViewModel(context: viewContext)).environment(\.managedObjectContext,viewContext)
        }
    }
}
