//
//  DrinkFirstView.swift
//  WaterBalance
//
//  Created by Merey Orynbassar on 08.05.2022.
//

import SwiftUI

struct DrinkFirstView: View {
    var body: some View {
        ZStack{
            VStack{
            HeaderText(headerText: "Water Balance", textSize: 17)
//                    .padding(.top,28)
            GradientRectangle()
                    .padding(.top,30)
                    .padding(.bottom,20)
            SecondaryTitle(secondaryTitle: "Add your first drink for today")
                    .multilineTextAlignment(.center)
                    .padding(.bottom,125)
            CustomButton(text: "Add")
            }
        }.padding(.horizontal)
    }
}



struct GradientRectangle: View{
    var body: some View {
        ZStack{
        RoundedRectangle(cornerRadius: 16)
            .fill(LinearGradient(colors: [Color("bgRectangle"), Color.white], startPoint: .top, endPoint: .bottom))
            .frame(width:358, height: 330 )
            VStack(spacing: 58){
        CircleView()
                Text("Monday, 25th of November")
                    .font(.system(size: 17, weight: .regular, design: .default))
            }
        }
    }
}
struct DrinkFirstView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkFirstView()
    }
}
