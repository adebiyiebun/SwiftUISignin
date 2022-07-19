//
//  ScreenSix.swift
//  SigninV2
//
//  Created by Гералд Бирген on 16.12.2020.
//

import SwiftUI

struct Login: View {
    //MARK: - PROPERTIES
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack{
            //  BG
            VStack{
                //  logo
                Image("8")
                    .frame(width: 166.14, height: 26)
                    .padding(.top, 50)
                Spacer()
                //  Form
                VStack(spacing:10){
                    Label {
                        CustomTextfield(placeholder: Text("Username"), fontName: "NunitoSans-Regular", fontSize: 16, fontColor: Color.white, foregroundColor: Color.white, username: $username)
                    } icon: {
                        Image(systemName: "person")
                            .frame(width: 14, height: 14)
                            .padding(.leading)
                    }.frame(height: 45)
                    .overlay(Rectangle().stroke(Color.white, lineWidth: 0.5).frame(height: 45))
                    
                    Label {
                        CustomSecureField(placeholder: Text("Password"), fontName: "NunitoSans-Regular", fontSize: 16, fontColor: Color.white, password: $password)
                    } icon: {
                        Image(systemName: "lock")
                            .frame(width: 14, height: 14)
                            .padding(.leading)
                    }.frame(height: 45)
                    .overlay(Rectangle().stroke(Color.white, lineWidth: 0.5).frame(height: 45))
                    
                }
                
                //  Button SignIn
                Button(action: {}){
                    Text("SIGN IN")
                        .modifier(CustomTextM(fontName: "NunitoSans-Bold", fontSize: 16, fontColor: Color.black))
                }
                .modifier(SFButton())
                .background(Color.white)
                .padding(.vertical,30)
                
                //  Forgot Password
                Text("Forgot Password")
                    .modifier(CustomTextM(fontName: "NunitoSans-Regular", fontSize: 16, fontColor: Color.white))
                    .padding(.bottom,30)
                    
            
            }
            .foregroundColor(.white)
            .padding(.horizontal,20)
            
        }.background(LinearGradient(gradient: Gradient(colors: [Color("midnightblue"), Color("lightblue")]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all))
    }
}
struct CustomTextM: ViewModifier {
    //MARK:- PROPERTIES
    let fontName: String
    let fontSize: CGFloat
    let fontColor: Color
    
    func body(content: Content) -> some View {
        content
            .font(.custom(fontName, size: fontSize))
            .foregroundColor(fontColor)
    }
}
struct SFButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity)
            .frame(height: 56, alignment: .leading)
    }
}
struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
