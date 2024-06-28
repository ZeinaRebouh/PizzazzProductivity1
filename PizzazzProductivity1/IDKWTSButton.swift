//
//  IDKWTSButton.swift
//  PizzazzProductivity1
//
//  Created by Scholar on 6/28/24.
//

import SwiftUI

struct IDKWTSButton: View {
    var body: some View {
        
        ZStack {
            
            Color(hue: 0.9, saturation: 0.3, brightness: 0.9, opacity: 1)
                .ignoresSafeArea(.all)
            
            VStack{
                
                Image("canoe")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(30)
                    .shadow(radius: 10)
                
                Image("success")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(30)
                    .shadow(radius: 10)
                
                Image("workit")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(30)
                    .shadow(radius: 10)
                
            } // Closes VStack
        } // Closes ZStack
    }}

#Preview {
    IDKWTSButton()
}
