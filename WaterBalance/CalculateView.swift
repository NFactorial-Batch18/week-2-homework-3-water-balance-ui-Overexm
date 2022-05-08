//
//  CalculateView.swift
//  WaterBalance
//
//  Created by Merey Orynbassar on 08.05.2022.
//

import SwiftUI

struct CalculateView: View {
    var body: some View {
        ZStack{
            VStack{
            TopButton()
                    .padding(.top,27)
            HeaderText(headerText: "Water balance", textSize: 24)
                    .padding(.top,29)
            
            SecondaryTitle(secondaryTitle: "Daily intake?")
                    .padding(.top,62)
                    .padding(.bottom,32)
            main
            Spacer()
            CustomButton(text: "Save")
            }
        }.padding(.horizontal)
            
    }
    
    var main: some View{
        ZStack{
            FrameSectionCalculate()
        }
    }
}



struct FrameSectionCalculate: View{
    var body: some View{
        RoundedRectangle(cornerRadius: 16)
            .fill(Color("bgRectangle"))
            .frame(width:358, height: 108 )
        HStack(spacing:12){
        ZStack{
        RoundedRectangle(cornerRadius: 16)
            .fill(.white)
            .frame(width: 250, height: 60)
        Text("2400")
                .foregroundColor(Color("button"))
                .fontWeight(.semibold)
        }
        Text("ML")
                .fontWeight(.semibold)
            
        }.padding(.leading,19)
            .padding(.trailing,43)
            .padding(.vertical,24)
        
    }
}

struct CalculateView_Previews: PreviewProvider {
    static var previews: some View {
        CalculateView()
    }
}
