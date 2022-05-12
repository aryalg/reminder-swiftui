//
//  Date+Extensions.swift
//  Reminders
//
//  Created by Bikram Aryal on 12/05/2022.
//

import Foundation

extension Date {
    static var today: Date {
        Date()
    }
    
    static var yesterday: Date {
        Calendar.current.date(byAdding: .day, value: -1, to: .today)!
    }
    
    static var tomorrow: Date {
        Calendar.current.date(byAdding: .day, value: 1, to: today)!
    }
    
    
    var formatAsString: String {
        let formatter = DateFormatter()
        
        formatter.dateFormat = "MM/dd/yyyy"
        
        return formatter.string(from: self)
    }
}
