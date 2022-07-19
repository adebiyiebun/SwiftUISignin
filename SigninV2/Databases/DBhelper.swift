//
//  DBhelper.swift
//  SigninV2
//
//  Created by ebun adebiyi on 18/07/2022.
//

import Foundation

class DBhelper {
    static func getDBPointer(databaseName:String)-> OpaquePointer?{
        var databasePointer : OpaquePointer?
        let documentDatabasePath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent(databaseName).path
        if FileManager.default.fileExists(atPath: documentDatabasePath){
            print("Database Already Exists")
        }
        else{
            guard let bundleData
        }
        return databasePointer
    }
}
