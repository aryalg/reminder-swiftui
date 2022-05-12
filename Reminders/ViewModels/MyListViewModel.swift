//
//  MyListViewModel.swift
//  Reminders
//
//  Created by Bikram Aryal on 12/05/2022.
//

import Foundation
import CoreData
import SwiftUI


struct MyListViewModel: Identifiable {
    var id: NSManagedObjectID {
        myList.objectID
    }
    
    var name: String {
        myList.name ?? ""
    }
    
    var color: Color {
        Color(myList.color ?? .clear)
    }
    
    private let myList: MyList
    
    init(myList: MyList) {
        self.myList  = myList
    }
}
