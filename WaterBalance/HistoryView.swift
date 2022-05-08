//
//  HistoryView.swift
//  WaterBalance
//
//  Created by Merey Orynbassar on 08.05.2022.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        ZStack{
            VStack{
                HeaderText(headerText: "History", textSize: 17)
                    .padding(.top,28)
                main
                
            }
        }.padding(.horizontal)
    }
    
    var main: some View{
        VStack{
            HStack{
            Text("Today")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
            Spacer()
            }.padding(.top,47)
                
            TextFieldSection(text: "250 ml", textField: "12:13")
              
            TextFieldSection(text: "200 ml", textField: "14:10")
            TextFieldSection(text: "50 ml", textField: "15:13")
            TextFieldSection(text: "300 ml", textField: "19:10")
            
            Group{
            HStack{
            Text("23.11.21")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
            Spacer()
            }.padding(.top,68)
            TextFieldSection(text: "250 ml", textField: "12:13")
            TextFieldSection(text: "200 ml", textField: "14:10")
            TextFieldSection(text: "50 ml", textField: "15:13")
            TextFieldSection(text: "300 ml", textField: "19:10")
            
            
            }
            Spacer()
        }
    }
}

struct TextFieldSection: View{
    let text: String
    let textField: String
    var body: some View{
        
            HStack{
                Text(text)
                    .font(.system(size: 17))
                TextField(textField, text: .constant(""))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.trailing)
                
            }
            .padding(.bottom,11)
            Divider()
        }
        
    
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
