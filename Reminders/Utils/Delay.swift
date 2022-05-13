//
//  Delay.swift
//  Reminders
//
//  Created by Bikram Aryal on 13/05/2022.
//

import Foundation


class Delay {
    private var seconds: Double
    
    
    init(_ seconds: Double = 2) {
        self.seconds = seconds
    }
    
    var workItem: DispatchWorkItem?
    
    
    func performWork(_ work: @escaping () -> Void) {
        workItem = DispatchWorkItem(block: {
            work()
        })
        
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: workItem!)
    }
    
    
    func cancel() {
        workItem?.cancel()
    }
}
