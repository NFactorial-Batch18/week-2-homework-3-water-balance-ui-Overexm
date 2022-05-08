//
//  EditView.swift
//  WaterBalance
//
//  Created by Merey Orynbassar on 08.05.2022.
//

import SwiftUI

struct EditView: View {
    init(){
        UITableView.appearance().backgroundColor = .clear
    }
    var body: some View {
        ZStack{
            VStack{
            HeaderText(headerText: "Edit", textSize: 17)
            main
            }
        }
    }
    
    
    var main: some View{
        Form{
            Picker(selection: .constant(1), label: Text("Daily intake level").foregroundColor(.black)){
                Text("2400 ML").tag(1)
                
            }
            Picker(selection: .constant(1), label: Text("Your goal").foregroundColor(.black)){
               
                
            }
            Picker(selection: .constant(1), label: Text("Reminder").foregroundColor(.black)){
               
                
            }
            
        }
        .background(.white)
    }
}

struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView()
    }
}
