//
//  HomeScreen.swift
//  PizzazzProductivity1
//
//  Created by Scholar on 6/28/24.
//

import SwiftUI

struct HomeScreen: View {
    @State private var studyTime = 0
    @State private var breakTime = 0
    let pink = Color(hue: 0.9, saturation: 0.3, brightness: 0.9, opacity: 1)
    let Dpink = Color(hue: 0.9, saturation: 0.7, brightness: 0.9, opacity: 1)
    let VDpink = Color(hue: 0.9, saturation: 0.5, brightness: 0.9, opacity: 1)
    let ALTpink = Color(hue: 0.9, saturation: 0.65, brightness: 0.9, opacity: 1)
    let LIGHTpink = Color(hue: 0.9, saturation: 0.2, brightness: 0.9, opacity: 1)
    let purple = Color(hue: 0.8, saturation: 0.5, brightness: 0.7, opacity: 1)







    
    
    
    
    var body: some View {
        ZStack {
            Color(pink)
                .ignoresSafeArea()
            
            NavigationStack {
                
            
                VStack {
                    
                    
                    Text("✨🎀Pace your study🎀✨")
                        .bold()
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.center)
                    Text("✨🎀and break time🎀✨")
                        .bold()
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.center)
                    Text("") // these are to space things out.....you can delete them if you figure out how to naturally space them
                    Text("")
                    Text("")
                    Text("")
                    
                    Text("STUDY TIME")
                        .font(.title)
                        .foregroundColor(purple)
                        .bold()
                    Stepper("How long for studying?", onIncrement: {
                        studyTime += 1
                    }, onDecrement: {
                        studyTime -= 1
                    })
                    .padding()
                    .background(Rectangle()
                        .foregroundColor(LIGHTpink))
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    .padding(.horizontal)
                    
                    .padding()
                    Text("🎀 Let's study for...\(studyTime) minutes!🎀")
                        .background(Rectangle()
                            .foregroundColor(VDpink))
                    
                    
                    
                    
                    Text("") //dont delete these are to space things out
                    Text("")
                    Text("")
                    Text("")
                    Text("")
                    
                    
                    Text("BREAK TIME")
                        .font(.title)
                        .padding(.top, 4.0)
                        .foregroundColor(purple)
                        .bold()
                    //please add a border around the whole thing
                    Stepper("How many minutes for your break?", onIncrement: {
                        breakTime += 1
                    }, onDecrement: {
                        breakTime -= 1
                    })
                    .padding()
                    .background(Rectangle()
                        .foregroundColor(LIGHTpink))
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    .padding(.horizontal)
                    .padding(.horizontal)
                    .padding()
                    Text("✨We'll take a break for... \(breakTime) minutes✨")
                        .cornerRadius(30)
                        .background(Rectangle()
                            .foregroundColor(VDpink))
                    
                    Text("")
                    Text("")
                    Text("")
                    
                    
                 
                        Text("Lets start!")
                            .font(.system(size:40))
                        
                            .foregroundColor(ALTpink)
                            .buttonStyle(.borderedProminent)
                            .shadow(radius: 5)
                            .padding(.horizontal)
                    }//closes nav link
                    
                }//closes nav stack
                      
                    
                    
                    
                }
                .padding()
                .buttonStyle(.bordered)
                .tint(Dpink)
                Spacer()
            }
        }
        
//}
    
    



#Preview {
    ContentView()
}
