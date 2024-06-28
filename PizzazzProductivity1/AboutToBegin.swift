//
//  AboutToBegin.swift
//  PizzazzProductivity1
//
//  Created by Scholar on 6/28/24.
//

import SwiftUI

struct AboutToBegin: View {
    var body: some View {
        ZStack {
            
            Color(hue: 0.9, saturation: 0.3, brightness: 0.9, opacity: 1)
                .ignoresSafeArea(.all)
       
        VStack {
                
            Image("levelup")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(30)
                .shadow(radius: 10)
            
            Image("doors")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(30)
                .shadow(radius: 10)
            
            Image("routine")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(30)
                .shadow(radius: 10)
            
            } // Closes VStack
        } // Closes ZStack
    }
}

#Preview {
    AboutToBegin()
}
