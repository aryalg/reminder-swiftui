//
//  MyListItemsView.swift
//  Reminders
//
//  Created by Bikram Aryal on 12/05/2022.
//

import SwiftUI

struct MyListItemsView: View {
    
    var items: [MyListItemViewModel]
    
    typealias ItemAdded = ((String, Date?) -> Void)?
    typealias ItemDeleted = ((MyListItemViewModel) -> Void)?
    
    var onItemAdded: ItemAdded
    var onItemDeleted: ItemDeleted
    
    
    
    init(items: [MyListItemViewModel],onItemAdded: ItemAdded = nil, onItemDeleted: ItemDeleted = nil){
        self.items = items
        self.onItemAdded = onItemAdded
        self.onItemDeleted = onItemDeleted
    }
    
    
    
    var body: some View {
        VStack(alignment: .leading) {
            List {
                ForEach(items, id: \.listItemId) {item in
                    ListItemCell(item: item, onListItemDeleted: {item in
                        onItemDeleted?(item)
                    })
                    Divider()
                }
                AddNewListItemView { title , dueDate in
                    onItemAdded?(title, dueDate)
                }
            }
    }
    }
}

struct MyListItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MyListItemsView(items: [])
    }
}
