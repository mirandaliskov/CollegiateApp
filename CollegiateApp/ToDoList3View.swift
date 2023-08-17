//
//  ToDoList3View.swift
//  CollegiateApp
//
//  Created by scholar on 8/16/23.
//

import Foundation

class ToDoItem: Identifiable {

    var id = UUID()
    var title = ""
    var isImportant = false
    
    init(title: String, isImportant: Bool = false) {
            self.title = title
            self.isImportant = isImportant
        }
}
