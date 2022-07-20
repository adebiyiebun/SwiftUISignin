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


struct Index_Previews: PreviewProvider {
    static var previews: some View {
        Index()
    }
}
