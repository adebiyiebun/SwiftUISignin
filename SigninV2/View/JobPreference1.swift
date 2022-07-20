//
//  JobPreference1.swift
//  
//
//  Created by ebun adebiyi on 15/07/2022.
//

import SwiftUI

struct Sectors: Identifiable {
    let id = UUID()
    let name: String
    var isChecked: Bool = false
    var iconName: String
}
      

struct JobPreference1: View {
   @State var options = [
            Sectors(name: "Technology",iconName: "desktopcomputer"),
            Sectors(name: "Law",iconName: "books.vertical.circle"),
            Sectors(name: "Finance",iconName: "bitcoinsign.circle"),
            Sectors(name: "Engineering",iconName: "wrench.and.screwdriver"),
            Sectors(name: "Creative", iconName: "paintbrush"),
            Sectors(name: "Public Service",iconName: "person.3"),
            Sectors(name: "Others",iconName: "wand.and.rays.inverse")]
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
                        Text("Select Your Preferred Sector:")
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
                
                    Button(action: {}) {
                        Text("Save")
                            .foregroundColor(Color.black)
                            .font(Font.custom("NunitoSans-Regular", size: 16))
                            
                    }.frame(height: 45)
                        .modifier(SFButton())
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 0.5).frame(width: 350,height: 45))
                        
                    
                }
            }
            .foregroundColor(.white)
//            .padding(.horizontal,20)
            
        }.frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(LinearGradient(gradient: Gradient(colors: [Color("midnightblue"), Color("lightblue")]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all))
            
    }
}
struct CheckBoxView: View {
    @Binding var checked: Bool

    var body: some View {
        Image(systemName: checked ? "checkmark.circle.fill" : "circle")
            .resizable()
            .frame(width: 24 , height: 24)
            .foregroundColor(checked ? Color("midnightblue") : Color("lightblue"))
            .onTapGesture {
                self.checked.toggle()
            }
    }
}


struct JobPreference1_Previews: PreviewProvider {
    static var previews: some View {
        JobPreference1()
    }
}

