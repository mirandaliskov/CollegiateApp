//
//  ToDoList1View.swift
//  CollegiateApp
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct ToDoList1View: View {
    
    @State var ToDoItems: [ToDoItem] = []
    @State private var showNewTask = false
    
    var body: some View {
        VStack {
            HStack {
                Text("To-Do List")
                    .fontWeight(.bold)
                    .font(Font.custom("Pangolin-Regular", size: 36))
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color("red")/*@END_MENU_TOKEN@*/)
                Spacer()
                Button(action: {
                    self.showNewTask = true
                }) {
                    Text("+")
                        .font(Font.custom("Pangolin-Regular", size: 36))
                }
                .foregroundColor(/*@START_MENU_TOKEN@*/Color("blue")/*@END_MENU_TOKEN@*/)
            }
            .padding()
            Spacer()
            List {
                ForEach (ToDoItems) {ToDoItem in
                    if ToDoItem.isImportant == true {
                    Text("‼️" + ToDoItem.title)
                } else {
                    Text(ToDoItem.title)
                }
                    }
            }
        }
        if showNewTask {
            ToDoList2View(title: "", isImportant: false, ToDoItems: $ToDoItems, showNewTask: $showNewTask)
                }
    }
}

struct ToDoList1View_Previews: PreviewProvider {
    static var previews: some View {
        ToDoList1View()
    }
}
