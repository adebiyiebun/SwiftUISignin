//
//  BaseModel.swift
//  SigninV2
//
//  Created by ebun adebiyi on 20/07/2022.
//

import Foundation
import CoreData
protocol BaseModel{
    static var viewContext:NSManagedObjectContext{get}
    func save() throws
    func delete() throws
    
}
extension BaseModel where Self:NSManagedObject{
    
    static var viewContext: NSManagedObjectContext {
        CoreDataManager.shared.persistentStoreContainer.viewContext
    }
    func save() throws{
        try Self.viewContext.save()
    }
    func delete() throws{
        Self.viewContext.delete(self)
        try save()
    }
}
