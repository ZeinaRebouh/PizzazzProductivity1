//
//  Lazy2.swift
//  PizzazzProductivity1
//
//  Created by Scholar on 6/28/24.
//

import SwiftUI

struct Lazy2: View {
    var body: some View {
        NavigationStack {
        ZStack {
            
            Color(hue: 0.9, saturation: 0.3, brightness: 0.9, opacity: 1)
                .ignoresSafeArea(.all)
        
            VStack {
                NavigationLink(destination: Lazy3()) {
                    Image("fingerpoint")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(30)
                } // Closes NavigationLink
              
                
                Image("smartnerd")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(30)
                    .fixedSize()
                
            }
            } // Closes ZStack
        } // Closes VStack
    } // Closes body
}//closes struct

#Preview {
    Lazy2()
}
