//
//  File.swift
//  
//
//  Created by Todd Bowden on 5/16/21.
//

import Foundation

extension DateComponents {
    
    public func add(days: Int) -> DateComponents? {
        guard let date = self.date else { return nil }
        var dayComponent = DateComponents()
        dayComponent.day = days
        guard let newDate = Calendar.current.date(byAdding: dayComponent, to: date) else { return nil }
        return Calendar.current.dateComponents([.year, .month, .day], from: newDate)
    }
    
    public func nextDay() -> DateComponents? {
        return add(days: 1)
    }
    
    
}
