//
//  SideBarView.swift
//  Reminders
//
//  Created by Bikram Aryal on 12/05/2022.
//

import SwiftUI

struct SideBarView: View {
    
    @Environment(\.managedObjectContext) var context: NSManagedObjectContext
    @State private var isPresented: Bool = false
    var body: some View {
        VStack(alignment: .leading) {
            
            
            Text("All Items Count 10")

        
            MyListsView(vm: MyListsViewModel(context: context));                Spacer()
            Button {
                // action
                isPresented = true
            } label: {
                HStack {
                    Image(systemName: Constants.Icons.plusCircle)
                    Text("Add List")
                }.padding()
                    .buttonStyle(.plain)
            }

            
        }.sheet(isPresented: $isPresented, content: {
            AddNewListView(vm: AddNewListViewModel(context: context))
        })
    }
}

struct SideBarView_Previews: PreviewProvider {
    static var previews: some View {
        SideBarView()
    }
}
