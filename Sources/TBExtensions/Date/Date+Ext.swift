//
//  NSDate+Ext.swift
//
//  Created by Todd Bowden on 5/12/16.
//  Copyright © 2016 Todd Bowden. All rights reserved.
//

import Foundation

public extension Date {
    
    
    func plusDays(_ days: Int) -> Date? {
        return (Calendar.current as NSCalendar).date(byAdding: .day, value: days, to: self, options: NSCalendar.Options(rawValue: 0))
    }
    
    var isToday: Bool {
        return Calendar.current.isDateInToday(self)
    }
    
    func isToday(timeZone: TimeZone = .current) -> Bool {
        return  Calendar.currentCalendar(timezone: timeZone).isDateInToday(self)
    }
    
    func isTomorrow(timezone: TimeZone = .current) -> Bool {
        return self.startOfDay(timezone: timezone) == Date().tomorrow(timezone: timezone)
    }
    
    func tomorrow(timezone: TimeZone = .current) -> Date {
        return (self.plusDays(1) ?? self.addingTimeInterval(TimeInterval(hours: 24))).startOfDay(timezone: timezone)
    }
    
    func startOfDay(timezone: TimeZone = .current) -> Date {
        return Calendar.currentCalendar(timezone: timezone).startOfDay(for: self)
    }
        
    var floorHour: Date? {
        let calendar = Calendar.current
        let components = (calendar as NSCalendar).components([.year, .month, .day, .hour], from: self)
        return calendar.date(from: components)
    }
    
    func hour(timezone: TimeZone = .current) -> Int {
        let calendar = Calendar.currentCalendar(timezone: timezone)
        let components = (calendar as NSCalendar).components([.hour], from: self)
        return components.hour!
    }
    
    var weekday: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }

    func plusMinutes(_ minutes: TimeInterval) -> Date {
        return self.addingTimeInterval(60 * minutes)
    }
    
    func plusHours(_ hours: TimeInterval) -> Date {
        return self.plusMinutes(60 * hours)
    }
    
}

