//
//  NSDate+Ext.swift
//
//  Created by Todd Bowden on 5/12/16.
//  Copyright © 2016 Todd Bowden. All rights reserved.
//

import Foundation

extension Date {
    
    
    func plusDays(_ days: Int) -> Date? {
        return (Calendar.current as NSCalendar).date(byAdding: .day, value: days, to: self, options: NSCalendar.Options(rawValue: 0))
    }
    
    var isToday: Bool {
        return Calendar.current.isDateInToday(self)
    }
    
    func isToday(timeZone: TimeZone) -> Bool {
        return  Calendar.currentCalendar(timezone: timeZone).isDateInToday(self)
    }
    
    func isTomorrow(timezone: TimeZone) -> Bool {
        return self.startOfDay(timezone: timezone) == Date().tomorrow?.startOfDay(timezone: timezone)
    }
    
    var tomorrow: Date? {
        return (Calendar.current as NSCalendar).date(byAdding: .day, value: 1, to: self, options: NSCalendar.Options(rawValue: 0))
    }
    
    func startOfDay(timezone: TimeZone) -> Date {
        return Calendar.currentCalendar(timezone: timezone).startOfDay(for: self)
    }
        
    var floorHour: Date? {
        let calendar = Calendar.current
        let components = (calendar as NSCalendar).components([.year, .month, .day, .hour], from: self)
        return calendar.date(from: components)
    }
    
    func hour(timezone: TimeZone) -> Int {
        let calendar = Calendar.currentCalendar(timezone: timezone)
        let components = (calendar as NSCalendar).components([.hour], from: self)
        return components.hour!
    }
    
    var weekday: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }

    
}

