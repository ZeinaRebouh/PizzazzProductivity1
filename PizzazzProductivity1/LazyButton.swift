//
//  LazyButton.swift
//  PizzazzProductivity1
//
//  Created by Scholar on 6/28/24.
//

import SwiftUI

struct LazyButton: View {
    var body: some View {
         
           NavigationStack {
               Text("Lazy Level 1")
                   .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
             
               ZStack {
                   
                   Color(hue: 0.9, saturation: 0.3, brightness: 0.9, opacity: 1)
                       .ignoresSafeArea(.all)
                   
                   VStack {
                       Text("Lazy 😩? Read a few of these quotes then get to work 🤓! ")
                           .font(.title)
                           .fontWeight(.bold)
                           .multilineTextAlignment(.center)
                       
                       Image("billgatesquote")
                           .resizable()
                           .aspectRatio(contentMode: .fit)
                           .cornerRadius(30)
                           .shadow(radius: 10)
                       
                       Text("🤩🤩🤩")
                           .font(.title)
                       
                       Text("Think about it. YOU are THAT lazy person. Get that job done!")
                           .font(.subheadline)
                           .fontWeight(.bold)
                           .multilineTextAlignment(.center)
                       
                       NavigationLink(destination: Lazy1()) {
                           Text("Give Me More!")
                               .font(.title)
                               .fontWeight(.bold)
                               .foregroundColor(.purple)
                               .padding()
                               .background(Rectangle()
                                   .foregroundColor(.white))
                               .cornerRadius(15)
                               .shadow(radius: 10)
                               .padding(.horizontal)
                      
                       }// Closes NavigationLink
                   } // Closes VStack
               } // Closes ZStack
           } // Closes NavigationStack
       } // Closes body
   } // Closes struct

   #Preview {
       LazyButton()
   } // Closes Preview
