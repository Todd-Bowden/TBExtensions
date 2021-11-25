//
//  UInt8+hex.swift
//  
//
//  Created by Todd Bowden on 11/25/21.
//

import Foundation

public extension UInt8 {
    
    var hex: String {
        var h = String(self, radix: 16, uppercase: false)
        if h.count == 1 {
            h = "0" + h
        }
        return h
    }
    
}
