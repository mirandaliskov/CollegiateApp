//
//  ToDoList2View.swift
//  CollegiateApp
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct ToDoList2View: View {
    
    @State var title: String
    @State var isImportant: Bool
    @Binding var ToDoItems: [ToDoItem]
    @Binding var showNewTask : Bool

    var body: some View {
        VStack {
            Text("Task Title")
                .font(Font.custom("Pangolin-Regular", size: 36))
                .fontWeight(.bold)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color("red")/*@END_MENU_TOKEN@*/)
                
            TextField("Enter the title...", text: $title)
                .frame(height: 50.0)
                .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: 1)
                .padding(.all)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
              
            Toggle(isOn: $isImportant) {
                Text("Important")
                    .font(Font.custom("Handlee-Regular", size: 20))
                    .fontWeight(.semibold)
            }
            .padding()
           
            Button(action: {
                self.showNewTask = false
                self.addTask(title: self.title, isImportant: self.isImportant)
                   
                
            }) {
                Text("Add")
                   
            }
            .padding()
            .buttonStyle(.borderedProminent)
            .font(Font.custom("Handlee-Regular", size: 25))
            .tint(.blue)
         
      
    
        }
    }
    private func addTask(title: String, isImportant: Bool = false) {
            
            let task = ToDoItem(title: title, isImportant: isImportant)
            ToDoItems.append(task)
        }
}

struct ToDoList2View_Previews: PreviewProvider {
    static var previews: some View {
        ToDoList2View(title: "", isImportant: false, ToDoItems: .constant([]), showNewTask: .constant(true))
    }
}
