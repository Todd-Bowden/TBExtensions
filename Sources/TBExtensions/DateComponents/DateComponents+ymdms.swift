//
//  DateComponents.swift
//
//  Created by Todd Bowden on 2/26/21.
//

import Foundation

public extension DateComponents {
    
    static var today: DateComponents {
        return Calendar.current.dateComponents([.year, .month, .day], from: Date())
    }
    
    var yearMonthDay: String {
        guard let year = year, let month = month, let day = day else { return "" }
        return String(format: "%04d-%02d-%02d", year, month, day)
    }
    
    var ymd: String {
        return yearMonthDay
    }
    
    var yearMonthDayMinutesSeconds: String {
        guard let year = year, let month = month, let day = day else { return "" }
        return String(format: "%04d-%02d-%02d %02d:%02d", year, month, day, minute ?? 0, second ?? 0)
    }
    
    var ymdms: String {
        return yearMonthDayMinutesSeconds
    }
    
    init(yearMonthDay: String) {
        self.init()
        let components = yearMonthDay.components(separatedBy: "-")
        if components.count == 3 {
            year = Int(components[0])
            month = Int(components[1])
            day = Int(components[2])
        }
    }
    
    init(ymdms: String) {
        self.init()
        let dayTime = yearMonthDayMinutesSeconds.components(separatedBy: " ")
        
        let dayComp = dayTime[0].components(separatedBy: "-")
        guard dayComp.count == 3 else { return }
        year = Int(dayComp[0])
        month = Int(dayComp[1])
        day = Int(dayComp[2])
        
        guard dayTime.count > 1 else { return }
        let timeComp = dayTime[1].components(separatedBy: ":")
        minute = Int(timeComp[0])
        second = Int(timeComp[1])
    }
    
    
}
