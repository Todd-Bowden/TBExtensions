//
//  File.swift
//  
//
//  Created by Todd Bowden on 5/19/21.
//

import Foundation

public extension TimeInterval {
    
    init(minutes: TimeInterval) {
        self.init(60 * minutes)
    }
    
    init(hours: TimeInterval) {
        self.init(60 * 60 * hours)
    }
    
    
}
