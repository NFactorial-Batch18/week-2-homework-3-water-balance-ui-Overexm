//
//  ReminderView.swift
//  WaterBalance
//
//  Created by Merey Orynbassar on 08.05.2022.
//

import SwiftUI

struct ReminderView: View {
    var body: some View {
        ZStack{
            VStack{
        TopButton()
                    .padding(.top,27)
        HeaderText(headerText: "water balance", textSize:24 )
                    .padding(.top,27)
        SecondaryTitle(secondaryTitle: "Remind me each")
                    .padding(.top,62)
        main
                    .padding(.top,32)
        CustomButton(text: "Next")
                    .padding(.top, 116)
                    .padding(.bottom, 50)
            }
        }.padding(.horizontal)
    }
    
    var main: some View{
        ZStack{
            FrameSection()
            VStack(spacing:14){
                HStack(spacing: 14){
            SmallSections(sectionText:"15 minutes" )
            SmallSections(sectionText: "30 minutes")
                
            
                
            }
            
                HStack(spacing:14){
                SmallSections(sectionText: "40 minutes")
                SmallSections(sectionText: "1 hour")
            }
                HStack(spacing:14){
                SmallSections(sectionText: "1,5 hours")
                SmallSections(sectionText: "2 hours")
                }
                HStack(spacing:14){
                SmallSections(sectionText: "3 hours")
                SmallSections(sectionText: "4 hours")
                }
            }.padding(.horizontal,19)
                .padding(.vertical,24)
        }
    }
}

struct SmallSections: View {
    let sectionText: String
    var body: some View{
        ZStack{
        RoundedRectangle(cornerRadius: 16)
            .fill(.white)
            .frame(width: 150, height: 60)
        Text(sectionText)
    }
}
}
struct TopButton: View{
    var body: some View{
        ZStack{
        HStack{
            Image(systemName: "chevron.backward")
                .resizable()
                .frame(width: 18, height:24)
                .foregroundColor(Color("header"))
            Spacer()
        }
    }
    }
}

struct ReminderView_Previews: PreviewProvider {
    static var previews: some View {
        ReminderView()
    }
}
