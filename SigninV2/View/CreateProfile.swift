//
//  CreateProfile.swift
//  SigninV2
//
//  Created by ebun adebiyi on 15/07/2022.
//

import SwiftUI

struct CreateProfile: View {
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
                        CustomTextfield(placeholder: Text("Full Name"), fontName: "NunitoSans-Regular", fontSize: 16, fontColor: Color.white, foregroundColor: Color.white, username: $username)
                    } icon: {
                        Image(systemName: "person")
                            .frame(width: 14, height: 14)
                            .padding(.leading)
                    }.frame(height: 45)
                    .overlay(Rectangle().stroke(Color.white, lineWidth: 0.5).frame(height: 45))
                    Label {
                        CustomTextfield(placeholder: Text("Email Address"), fontName: "NunitoSans-Regular", fontSize: 16, fontColor: Color.white, foregroundColor: Color.white, username: $username)
                    } icon: {
                        Image("email-icon")
                            .resizable()
                            .foregroundColor(Color.white)
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
                    
                    Label {
                        CustomSecureField(placeholder: Text(" Confirm Password"), fontName: "NunitoSans-Regular", fontSize: 16, fontColor: Color.white, password: $password)
                    } icon: {
                        Image(systemName: "lock")
                            .frame(width: 14, height: 14)
                            .padding(.leading)
                    }.frame(height: 45)
                    .overlay(Rectangle().stroke(Color.white, lineWidth: 0.5).frame(height: 45))
                }
                
                //  Button SignIn
                Button(action: {}){
                    Text("Register")
                        .modifier(CustomTextM(fontName: "NunitoSans-Bold", fontSize: 16, fontColor: Color.black))
                }
                .modifier(SFButton())
                .background(Color.white)
                .padding(.vertical,30)
                

            
            }
            .foregroundColor(.white)
            .padding(.horizontal,20)
            
        }.background(LinearGradient(gradient: Gradient(colors: [Color("midnightblue"), Color("lightblue")]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all))
    }
}

struct CreateProfile_Previews: PreviewProvider {
    static var previews: some View {
        CreateProfile()
    }
}
