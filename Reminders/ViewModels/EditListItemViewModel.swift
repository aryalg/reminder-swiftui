//
//  EditListItemViewModel.swift
//  Reminders
//
//  Created by Bikram Aryal on 13/05/2022.
//

import Foundation



class EditListItemViewModel: ObservableObject {
    
    var listItemVM: MyListItemViewModel
    @Published var title: String = ""
    @Published var selectedDate: Date?
    
    
    init(listItemVM: MyListItemViewModel) {
        self.listItemVM = listItemVM
        title = listItemVM.title
        selectedDate = listItemVM.dueDate != nil ? (listItemVM.dueDate!.value) : nil
    }
    
    
    func save() {
        let myListItem: MyListItem? = MyListItem.byId(id: listItemVM.listItemId)
        
        
        if let myListItem = myListItem {
            myListItem.title = title
            myListItem.dueDate = selectedDate
            try? myListItem.save()
        }
    }
}
