//
//  MyListItemsView.swift
//  Reminders
//
//  Created by Bikram Aryal on 12/05/2022.
//

import SwiftUI

struct MyListItemsView: View {
    
    typealias ItemAdded = ((String, Date?) -> Void)?
    
    var onItemAdded: ItemAdded
    
    
    init(onItemAdded: ItemAdded = nil){
        self.onItemAdded = onItemAdded
    }
    
    
    
    var body: some View {
        VStack(alignment: .leading) {
            List(1...10, id: \.self) {index in
                Text("Item \(index)")
            }
            AddNewListItemView { title, dueDate in
                // Add Item
                onItemAdded?(title, dueDate)
            }
        }
    }
}

struct MyListItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MyListItemsView()
    }
}
