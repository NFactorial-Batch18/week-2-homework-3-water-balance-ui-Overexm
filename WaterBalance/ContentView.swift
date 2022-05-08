//
//  ContentView.swift
//  WaterBalance
//
//  Created by Merey Orynbassar on 07.05.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            ZStack{
                
                DrinkFirstView()}
                .tabItem{
                    ZStack{
                    Image(systemName:"house.circle.fill")
                        .renderingMode(.template)
                    Text("Main")


                    }

                }
            ZStack{
                HistoryView()}
                .tabItem{
                    Image(systemName:"slider.horizontal.3")
                        .renderingMode(.template)
                    Text("Settings")
                        .foregroundColor(.white)
                }
            
            ZStack{
               EditView()}
                .tabItem{
                    Image(systemName: "doc")
                        .renderingMode(.template)
                    Text("History")
                        .foregroundColor(.white)
                }
        }.accentColor(Color("button"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
