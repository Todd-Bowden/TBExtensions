//
//  NSCalendar+Timezone.swift
//
//  Created by Todd Bowden on 6/20/16.
//  Copyright © 2016 Todd Bowden. All rights reserved.
//

import Foundation

public extension Calendar {
    
    static func currentCalendar(timezone: TimeZone) -> Calendar {
        var calendar = Calendar.current
        calendar.timeZone = timezone
        return calendar
    }
    
}
