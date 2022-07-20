//
//  UsersViewModel.swift
//  SigninV2
//
//  Created by ebun adebiyi on 20/07/2022.
//

import Foundation
import CoreData

class UsersViewModel: ObservableObject{
    @Published var users = [UsersVModel]()
    private (set) var context: NSManagedObjectContext
    init(context: NSManagedObjectContext){
        self.context = context
        
    }
}
struct UsersVModel: Identifiable{
    private var user: Users
    init(user:Users){
        self.user = user
    }
    var id: NSManagedObjectID{
        user.objectID
         
    }
    var full_name: String{
        user.full_name ?? ""
    }
}
