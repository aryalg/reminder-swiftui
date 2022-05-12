//
//  MyListsViewModel.swift
//  Reminders
//
//  Created by Bikram Aryal on 12/05/2022.
//

import Foundation
import SwiftUI
import CoreData

class MyListsViewModel:NSObject, ObservableObject {
    
    @Published var myLists = [MyListViewModel]()
    
    private let fetchedResultsController: NSFetchedResultsController<MyList>
    private var context: NSManagedObjectContext
    
    
    init(context: NSManagedObjectContext) {
       
        self.context = context
        fetchedResultsController = NSFetchedResultsController(fetchRequest: MyList.all, managedObjectContext: context, sectionNameKeyPath: nil, cacheName: nil)
        
        super.init()
       
        fetchedResultsController.delegate = self
        
        fetchAll()
       
        
    }
    
    private func fetchAll() {
        do {
        try fetchedResultsController.performFetch()
        
            guard let myLists = fetchedResultsController.fetchedObjects else {
                return
            }
            
            self.myLists = myLists.map(MyListViewModel.init)
            
            
        } catch {
            
        }
    }
}


extension MyListsViewModel: NSFetchedResultsControllerDelegate {
    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        guard let myLists = controller.fetchedObjects as? [MyList] else {
            return
        }
        
        self.myLists = myLists.map(MyListViewModel.init)
    }
}
