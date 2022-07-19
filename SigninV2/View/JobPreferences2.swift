//
//  JobPreferences2.swift
//  SigninV2
//
//  Created by ebun adebiyi on 18/07/2022.
//

import SwiftUI


struct JobTypes: Identifiable {
    let id = UUID()
    let name: String
    var isChecked: Bool = false
    var iconName: String
}
      


struct JobPreferences2: View {
    @State var options = [
             JobTypes(name: "Full Time",iconName: "clock"),
             JobTypes(name: "Part-Time",iconName: "clock.circle"),
             JobTypes(name: "Graduate",iconName: "graduationcap"),
             JobTypes(name: "Internship",iconName: "graduationcap.circle")]
     @State private var checked = false
     var body: some View {
         ZStack{
             //  BG
             VStack{
                 //  logo
                 VStack {
                     Image("8")
                         .frame(width: 166.14, height: 26.0)
                     .padding(.top, 50)
                 }
                 Spacer()
                     .frame(height: 50)
                 VStack{
                     HStack{
                         Spacer()
                             .frame(width:20)
                         Text("What type of job are you looking for?:")
                             .frame(maxWidth: .infinity, alignment: .leading)
                             .modifier(CustomTextM(fontName: "NunitoSans-Bold", fontSize: 25, fontColor: Color.white))
                     }
                 }
                 Spacer()
                     .frame(height: 30)
                 //  Form
                 VStack(spacing:20){
                     List(options.indices){index in
                         HStack{
                             Image(systemName: self.options[index].iconName)
                                 .padding(.leading,30)
                             .font(Font.system(size:15, weight: .regular))
                             .frame(width: 15, height: 15)
                             Spacer().frame(width: 30)
                             Text(self.options[index].name)
                             .modifier(CustomTextM(fontName: "NunitoSans-Bold", fontSize: 20, fontColor: Color.white))
                             Spacer().frame(width: .infinity)
                             CheckBoxView(checked: self.$options[index].isChecked)
                                 .padding()
 //                                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing)
 //                            }.frame(maxWidth: .infinity, alignment: .leading)
 //                        }.frame(maxWidth:.infinity, height: 45)
                         }.overlay(RoundedRectangle(cornerRadius: 40).stroke(Color.white, lineWidth: 0.5))
                         .frame(width:.infinity, height: 50)
                             
                     }.listStyle(.inset)
                     .onAppear {UITableView.appearance().backgroundColor = .clear}
                 
                     Button(action: {}){
                         Text("Save")
                             .modifier(CustomTextM(fontName: "NunitoSans-Bold", fontSize: 16, fontColor: Color.black))
                     }
                     .modifier(SFButton())
                     .background(Color.white)
                     .padding(.vertical,30)
                         
                     
                 }
             }
             .foregroundColor(.white)
 //            .padding(.horizontal,20)
             
         }.frame(maxWidth: .infinity,maxHeight: .infinity)
         .background(LinearGradient(gradient: Gradient(colors: [Color("midnightblue"), Color("lightblue")]), startPoint: .top, endPoint: .bottom)
             .edgesIgnoringSafeArea(.all))
             
    }
}

struct JobPreferences2_Previews: PreviewProvider {
    static var previews: some View {
        JobPreferences2()
    }
}
