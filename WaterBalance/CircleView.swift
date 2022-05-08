//
//  CircleView.swift
//  WaterBalance
//
//  Created by Merey Orynbassar on 08.05.2022.
//

import SwiftUI

struct CircleView: View {
    var body: some View {
        ZStack{
            Circle()
                .stroke(lineWidth: 6)
                .foregroundColor(.white)
            ZStack{
            Circle()
                .fill(LinearGradient(colors: [Color("bgRectangle"), Color.white], startPoint: .top, endPoint: .bottom))
                VStack(spacing:2){
                    Text("0%")
                        .font(.system(size: 36, weight: .bold, design: .default))
                    
                    Text("0 out of 2,4 L")
                    
                }.padding(.top,48 )
                    .padding(.bottom, 30)
            }
        }.frame(width: 180, height: 180)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}
