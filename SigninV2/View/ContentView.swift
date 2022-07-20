//
//  ContentView.swift
//  SigninV2
//
//  Created by Гералд Бирген on 27.09.2020.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var viewContext
    private var UsersVM: UsersViewModel
    init(vm: UsersViewModel){
        self.UsersVM = vm
    }
    var body: some View {
        VStack{
            Index()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let viewContext = CoreDataManager.shared.persistentStoreContainer.viewContext
        ContentView(vm:UsersViewModel(context: viewContext))
    }
}
