//
//  NewToDoView.swift
//  PizzazzProductivity1
//
//  Created by Scholar on 6/28/24.
//

import SwiftUI
import SwiftData

struct NewToDoView: View {
    
    @Binding var showNewTask: Bool
    @Bindable var toDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        VStack {
                    Text("Task title: ")
                        .font(.title)
                        .fontWeight(.bold)
                    
            TextField("Enter the task description...", text: $toDoItem.title, axis: .vertical)
                        .padding()
                        .background(Color(.systemGroupedBackground))
                        .cornerRadius(15)
                        .padding()
                    
            Toggle(isOn: $toDoItem.isImportant) {
                        Text("Is it important?")
                    } // closes our Toggle
                    
                    Button {
                        addToDo()
                        self.showNewTask = false
                    } label: {
                        Text("Save")
                    }//closes label
                    
                } // closes VStack
                .padding()

  
    }//closes body
    
    func addToDo() {
        
        let toDo = ToDoItem(title: toDoItem.title, isImportant: toDoItem.isImportant)
        modelContext.insert(toDo)
        
    }//closes func
    
}//closes struct

/*

#Preview {
    NewToDoView()
}

*/
