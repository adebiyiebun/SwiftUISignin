//
//  CustomSecureField.swift
//  SigninV2
//
//  Created by Гералд Бирген on 27.09.2020.
//

import SwiftUI

struct CustomSecureField: View {
    //MARK:- PROPERTIES    
    var placeholder: Text
    var fontName: String
    var fontSize: CGFloat
    var fontColor: Color
    
    @Binding var password: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }
    
    var body: some View {
        ZStack(alignment: .leading) {
            if password.isEmpty { placeholder.modifier(CustomTextM(fontName: fontName, fontSize: fontSize, fontColor: fontColor)) }
            SecureField("", text: $password, onCommit: commit)
                .foregroundColor(.white)
        }
    }
}

struct CustomTextfield: View {
    //MARK:- PROPERTIES
    var placeholder: Text
    var fontName: String
    var fontSize: CGFloat
    var fontColor: Color
    var foregroundColor: Color?
    
    @Binding var username: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }
    
    var body: some View {
        ZStack(alignment: .leading) {
            if username.isEmpty { placeholder.modifier(CustomTextM(fontName: fontName, fontSize: fontSize, fontColor: fontColor)) }
            TextField("", text: $username, onEditingChanged: editingChanged, onCommit: commit).foregroundColor((foregroundColor != nil) ?  foregroundColor : Color.primary)
        }
    }
}

