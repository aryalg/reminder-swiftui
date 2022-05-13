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
    
    var onItemAdded: ItemAdded
    
    
    init(items: [MyListItemViewModel],onItemAdded: ItemAdded = nil){
        self.items = items
        self.onItemAdded = onItemAdded
    }
    
    
    
    var body: some View {
        VStack(alignment: .leading) {
            List {
                ForEach(items, id: \.listItemId) {item in
                    Text(item.title)
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
