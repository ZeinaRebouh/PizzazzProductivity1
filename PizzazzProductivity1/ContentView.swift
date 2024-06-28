//
//  ContentView.swift
//  PizzazzProductivity
//
//  Created by Scholar on 6/25/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State var textTitle = "What is your name?"
    @State private var displayName = ""
    @State private var navLink1 = " "
    @State private var navLink2 = " "
    @State private var navLink3 = " "
    var body: some View {
        
        let pink = Color(hue: 0.9, saturation: 0.3, brightness: 0.9, opacity: 1)
        let purple = Color(hue: 0.8, saturation: 0.5, brightness: 0.7, opacity: 1)
        
        NavigationStack {
            
            ZStack{
                Color(pink)
                    .ignoresSafeArea()
                VStack{
                    Text(" WELCOME TO")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text("✨🎀 PIZZAZZ 🎀✨")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text("  PRODUCTIVITY,")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text(displayName)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    TextField("Enter Name", text: $name)
                        .multilineTextAlignment(.center)
                        .border(Color.gray, width:1)
                    
                    Button("Submit Name") {
                        displayName = "\(name)!"
                        navLink1 = "Timers"
                        navLink2 = "To-Do List"
                        navLink3 = "Quotes and Tips"
                    }//closes button
                    .font(.footnote)
                    .fontWeight(.light)
                    .buttonStyle(.borderedProminent)
                    .tint(.blue)
                    .padding()
                    
                    NavigationLink(destination: HomeScreen()) {
                        Text("\(navLink1)")
                            .font(.title2)
                            .foregroundColor(purple)
                            .padding()
                    }
                    NavigationLink(destination: ToDoContentView()) {
                        Text("\(navLink2)")
                            .font(.title2)
                            .foregroundColor(purple)
                    }
                        NavigationLink(destination: QuotesContentView()) {
                            Text("\(navLink3)")
                                .font(.title2)
                                .foregroundColor(purple)
                                .padding()
                            
                        }//closes nav link
                    }//closes vsatck
                }//closes zstack
                .padding()
                .navigationTitle("Home")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
            }//closes nav stack
            
        }//closes body
    }//closes struct

    #Preview {
        ContentView()
    }
    
    


