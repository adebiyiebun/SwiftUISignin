//
//  Index.swift
//  SigninV2
//
//  Created by ebun adebiyi on 15/07/2022.
//

import SwiftUI

struct Index: View {
    @State private var showSignUp = false
    @State private var showLogin = false
    var body: some View {
        NavigationView{
            VStack(){
                VStack(){
                    Image("2")
                }
                Spacer()
                VStack(){
                    Button(action: { showSignUp = true }) {
                       Text("sign up")
                           .fontWeight(.light)
                           .font(.title)
                           .foregroundColor(Color("midnightblue"))
                    
                   }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .border(Color("midnightblue"), width: 1.5)
//                    NavigationLink("", destination:  SignUp(), isActive: $showSignUp)
                    

                    Button(action: { showLogin = true }) {
                       Text("log in")
                           .fontWeight(.light)
                           .font(.title)
                           .foregroundColor(Color("midnightblue"))
                   }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .border(Color("midnightblue"), width: 1.5)
                    NavigationLink("", destination: Login(), isActive: $showLogin)
                }.padding()
            }
            .background(
              LinearGradient(gradient: Gradient(colors: [Color("midnightblue"), Color("lightblue")]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all))
        }
        
    }
}

//struct SignUp: View {
//    @State private var username = ""
//    @State private var password = ""
//    var body: some View {
//        ZStack{
//           VStack(spacing: 30){
//               // Logo
//               Image("8")
////                   .resizable()
////                   .frame(width: 104.93, height: 32.54)
////                   .padding(.top,20)
//               Spacer()
//               // Form
//               VStack(spacing: 0){
//                   TextField("Username", text: $username)
//                       .padding(10)
//                       .font(Font.system(size: 15, weight: .medium, design: .serif))
//                       .foregroundColor(.primary)
//                       .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 0.5).frame(height: 45))
//                       .preferredColorScheme(.dark)
//                       .multilineTextAlignment(.center)
//
//                   VStack(spacing:0){
//                      Label {
//                          CustomTextfield(placeholder: Text("Username"), fontName: "NunitoSans-Regular", fontSize: 16, fontColor: Color.white, foregroundColor: Color.white, username: $username)
//                      } icon: {
//                          Image(systemName: "person")
//                              .frame(width: 14, height: 14)
//                              .padding(.leading)
//                      }.frame(height: 45)
//                      .overlay(Rectangle().stroke(Color.white, lineWidth: 0.5).frame(height: 45))
//
//                      Label {
//                          CustomSecureField(placeholder: Text("Password"), fontName: "NunitoSans-Regular", fontSize: 16, fontColor: Color.white, password: $password)
//                      } icon: {
//                          Image(systemName: "lock")
//                              .frame(width: 14, height: 14)
//                              .padding(.leading)
//                      }.frame(height: 45)
//                      .overlay(Rectangle().stroke(Color.white, lineWidth: 0.5).frame(height: 45))
//
//                  }
//
//                  //  Button SignIn
//                  Button(action: {}){
//                      Text("SIGN IN")
////                          .modifier(CustomTextM(fontName: "NunitoSans-Bold", fontSize: 16, fontColor: Color.black))
//                  }
////                  .modifier(SFButton())
//                  .background(Color.white)
//                  .padding(.vertical,30)
//
//                  //  Forgot Password
//                  Text("Forgot Password")
////                      .modifier(CustomTextM(fontName: "NunitoSans-Regular", fontSize: 16, fontColor: Color.white))
//                      .padding(.bottom,30)
//
//
//              }
//               }
//        }.background(LinearGradient(gradient: Gradient(colors: [Color("midnightblue"), Color("lightblue")]), startPoint: .top, endPoint: .bottom)
//            .edgesIgnoringSafeArea(.all))
//
//    }
//}

struct Index_Previews: PreviewProvider {
    static var previews: some View {
        Index()
    }
}
