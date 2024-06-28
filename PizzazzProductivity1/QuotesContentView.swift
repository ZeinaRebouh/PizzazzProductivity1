//
//  QuotesContentView.swift
//  PizzazzProductivity1
//
//  Created by Scholar on 6/28/24.
//

import SwiftUI

struct QuotesContentView: View {
    var body: some View {
            NavigationStack {
                Text("Quotes & Tips")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)

            ZStack {
              
                Color(hue: 0.9, saturation: 0.3, brightness: 0.9, opacity: 1)
                    .ignoresSafeArea(.all)
         
                VStack {
                    
                    Text("Welcome, here is your first motivational quote!")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                 
                    Image("motivationalquote1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                        .shadow(radius: 10)
                 
                    Text("How are you feeling today?")
                        .font(.headline)
                
                    NavigationLink(destination: LazyButton()) {
                        Text("Lazy 😣😒")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.purple)
                            .padding()
                            .background(Rectangle()
                                .foregroundColor(.white))
                            .cornerRadius(15)
                            .shadow(radius: 10)
                            .padding(.horizontal)
                    }//Closes NavigationLink
                    
                    NavigationLink(destination: IDKWTSButton()) {
                    Text("I don't know where or how to start 😳🥵😼")
                        .fontWeight(.bold)
                        .foregroundColor(.purple)
                        .padding()
                        .background(Rectangle()
                        .foregroundColor(.white))
                        .cornerRadius(15)
                        .shadow(radius: 10)
                        .padding(.horizontal)
                    }//Closes NavigationLink
                    
                    NavigationLink(destination: AboutToBegin()) {
                    Text("I'm about to begin my study time 🫦✍️🧠‼️")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.purple)
                        .padding()
                        .background(Rectangle()
                        .foregroundColor(.white))
                        .cornerRadius(15)
                        .shadow(radius: 10)
                        .padding(.horizontal)
                    }//Closes NavigationLink
                    
                    } // Closes VStack
                    .padding()
                } //Closes ZStack
            } // Closes NavigationStack
            } // Closes body
        } // Closes struct



#Preview {
    QuotesContentView()
}
