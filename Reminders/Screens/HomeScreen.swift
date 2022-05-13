//
//  HomeScreen.swift
//  Reminders
//
//  Created by Bikram Aryal on 12/05/2022.
//

import SwiftUI

struct HomeScreen: View {
    
    
    @Environment(\.managedObjectContext) var context: NSManagedObjectContext
    var body: some View {
        NavigationView {
            
            
            let myListVM = MyListsViewModel(context: context)
            
            let firstListVM = myListVM.myLists.first
            
          SideBarView()
                .frame(minWidth: 200)
            
            
            
            if let firstListVM = firstListVM {
                MyListItemHeaderView(name: firstListVM.name, count: firstListVM.itemsCount, color: firstListVM.color)
                
                MyListItemsView(items: firstListVM.items)
            } else {
                Text("MyLIstItems")
            }
            
            
           
            
          
        
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
