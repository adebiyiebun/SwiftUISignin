//
//  CoreDataManager.swift
//  SigninV2
//
//  Created by ebun adebiyi on 20/07/2022.
//

import Foundation
import CoreData

class CoreDataManager{
    let persistentStoreContainer: NSPersistentContainer
    static let shared = CoreDataManager()
    private init(){
        persistentStoreContainer = NSPersistentContainer(name: "ag")
        persistentStoreContainer.loadPersistentStores{ description, error in
            if let error = error {
                fatalError("Unable to Init Core Data\(error)")
            }
            
        }
    }
}
