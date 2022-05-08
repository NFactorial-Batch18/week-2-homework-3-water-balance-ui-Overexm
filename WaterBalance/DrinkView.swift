//
//  DrinkView.swift
//  WaterBalance
//
//  Created by Merey Orynbassar on 08.05.2022.
//

import SwiftUI

struct DrinkView: View {
    var body: some View {
        ZStack{
            VStack{
            HeaderText(headerText: "Water Balance", textSize: 17)
                  
            GradientWithText()
                    .padding(.top,30)
                    .padding(.bottom,20)
            SecondaryTitle(secondaryTitle: "Great Job!")
                    .multilineTextAlignment(.center)
                    .padding(.bottom,171)
            CustomButton(text: "Add")
            }
        }.padding(.horizontal)
    }
    
    
    
}


struct CircleWithImage: View{
    var body: some View{
        ZStack{
            Circle()
                .stroke(lineWidth: 6)
                .foregroundColor(.white)
            ZStack{
            Image("level")
                    .resizable()
                    .frame(width:160, height:160)
                VStack(spacing:2){
                    Text("34%")
                        .font(.system(size: 36, weight: .bold, design: .default))
                    
                    Text("0,8 out of 2,4 L")
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                    
                }.padding(.top,48 )
                    .padding(.bottom, 30)
            }
        }.frame(width: 180, height: 180)
    }
}
struct GradientWithText: View{
    var body: some View{
        ZStack{
        RoundedRectangle(cornerRadius: 16)
            .fill(LinearGradient(colors: [Color("bgRectangle"), Color.white], startPoint: .top, endPoint: .bottom))
            .frame(width:358, height: 330 )
            VStack(spacing: 58){
                CircleWithImage()
                Text("Monday, 25th of November")
                    .font(.system(size: 17, weight: .regular, design: .default))
            }
        }
    }
}
struct DrinkView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkView()
    }
}
