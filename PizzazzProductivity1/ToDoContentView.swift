//
//  ToDoContentView.swift
//  PizzazzProductivity1
//
//  Created by Scholar on 6/28/24.
//

import SwiftUI
import SwiftData

struct ToDoContentView: View {
    
    @State private var showNewTask = false
    
    @Query var toDos: [ToDoItem]
    
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        let pink = Color(hue: 0.9, saturation: 0.3, brightness: 0.9, opacity: 1)
        ZStack {
            Color(pink)
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    
                    Text("✨🎀To Do List🎀✨")
                        .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                        .bold()
                    
                    Spacer()
                    Button {
                        withAnimation {
                            self.showNewTask = true
                        }//closes animantion
                    } label: {
                        Text("+")
                            .font(.system(size : 40))
                        
                    }//closes label
                    
                } //closes hstack
                
                .padding()
                Spacer()
                
                List {
                    ForEach(toDos) { toDoItem in
                        //     Text(toDoItem.title)
                        if toDoItem.isImportant == true {
                            Text("‼️" + toDoItem.title)
                        } else {
                            Text(toDoItem.title)
                        }//closes else
                    }//closes foreach
                    
                    .onDelete(perform: deleteToDo)
                }//closes list
                .listStyle(.plain)
            }//closes vstack
        }//closes zstack
        if showNewTask {
            NewToDoView(showNewTask: $showNewTask, toDoItem: ToDoItem(title: "", isImportant: false))
        }//closes if statement
        
        
    }//closes body
    
    func deleteToDo(at offsets: IndexSet) {
        for offset in offsets {
            let toDoItem = toDos[offset]
            modelContext.delete(toDoItem)
        }//closes for
    }//closes func
    
}//closes struct

#Preview {
    ToDoContentView()
}
