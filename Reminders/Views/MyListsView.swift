//
//  MyListsView.swift
//  Reminders
//
//  Created by Bikram Aryal on 12/05/2022.
//

import SwiftUI

struct MyListsView: View {
    
    @StateObject private var vm: MyListsViewModel
    
    init(vm: MyListsViewModel) {
        _vm = StateObject(wrappedValue: vm);
    }
    
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
            List {
                Text("My List")
                ForEach(vm.myLists) {myList in
                    
                    NavigationLink {
                        MyListItemHeaderView(name: myList.name, count: 6, color: myList.color)
                        
                        
                        MyListItemsView { title, dueDate in
                            vm.saveTo(list: myList, title: title, dueDate: dueDate)
                        }
                    } label: {
                        HStack {
                            Image(systemName: Constants.Icons.line3HorizontalCircleFill)
                                .font(.title)
                                .foregroundColor(myList.color)
                            Text(myList.name)
                        }
                    }.contextMenu {
                        Button {
                            // action
                            vm.delete(myList)
                        } label: {
                            Label("Delete", systemImage: "trash")
                        }

                    }
                }
            }
            
        }
    }
}

struct MyListsView_Previews: PreviewProvider {
    static var previews: some View {
        let viewContext = CoreDataManager.shared.persistentContainer.viewContext
        MyListsView(vm: MyListsViewModel(context: viewContext ))
    }
}
