//
//  Lazy1.swift
//  PizzazzProductivity
//
//  Created by Scholar on 6/28/24.
//

import SwiftUI

struct Lazy1: View {
    var body: some View {
        NavigationStack {
            Text("Lazy Level 1")
                .fontWeight(.bold)
            ZStack {
                
                Color(hue: 0.9, saturation: 0.3, brightness: 0.9, opacity: 1)
                    .ignoresSafeArea(.all)
                
                VStack {
                    
                    Image("stairs")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(30)
                        .shadow(radius: 10)
                    
                    
                    Image("pinkcook")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(30)
                        .shadow(radius: 10)
                    
                    NavigationLink(destination: Lazy2()) {
                        Image("noexcuses")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(30)
                            .shadow(radius: 10)
                    } // Closes NavigationLink
                    
                } // Closes VStack
            } // Closes ZStack
        } // Closes NavigationStack
    } // Closes body
} // Closes struct

#Preview {
    Lazy1()
}

