//
//  GoalView.swift
//  WaterBalance
//
//  Created by Merey Orynbassar on 07.05.2022.
//

import SwiftUI

struct GoalView: View {
    var body: some View {
        ZStack{
            VStack{
            
                HeaderText(headerText: "Water balance", textSize: 24)
                    .padding(.top,108)
                SecondaryTitle(secondaryTitle: "What is your goal?")
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
                SmallSection(sectionText: "Goal Number One", isSelected: true)
                SmallSection(sectionText: "Goal Number Two", isSelected: false)
                SmallSection(sectionText: "Goal Number Three", isSelected: false)
                SmallSection(sectionText: "Goal Number Four", isSelected: false)
            }.padding(.horizontal,19)
                .padding(.vertical,24)
        }
    }
    
}



struct FrameSection: View{
    var body: some View{
        RoundedRectangle(cornerRadius: 16)
            .fill(Color("bgRectangle"))
            .frame(width:358, height: 330 )
    }
}

struct CustomButton: View {
    let text: String
    var action: () -> Void = {}

    var body: some View {
        Button(action: action) {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color("button"))
                    .frame(height: 60)
                Text(text)
                    .font(.system(size: 22))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
            }
        }
    }
}

struct SmallSection: View{
    let sectionText : String
    let isSelected: Bool
    var body: some View{
        ZStack{
        RoundedRectangle(cornerRadius: 16)
            .fill(.white)
            .frame(width: 320, height: 60)
            HStack{
            Text(sectionText)
            Spacer()
            Image(self.isSelected ? "filledPicker" : "picker" )
            }.padding(.horizontal,24)
        }
    }
}
struct SecondaryTitle: View{
    let secondaryTitle: String
    var body: some View{
        Text(secondaryTitle)
            .font(.system(size: 36))
            .fontWeight(.semibold)
        
            
    }
}

struct HeaderText: View{
    let headerText: String
    let textSize: Int
    var body: some View{
        Text(headerText)
            .font(.system(size:CGFloat(textSize)))
            .italic()
            .fontWeight(.black)
            .textCase(.uppercase)
            .foregroundColor(Color("header"))
          
        
    }
}
struct GoalView_Previews: PreviewProvider {
    static var previews: some View {
        GoalView()
    }
}
