//
//  Dictionary+Values.swift
//  Copyright © 2016 Todd Bowden. All rights reserved.
//

import Foundation

public extension Dictionary  {
    
    func intForKey(_ key:Key, defaultValue:Int = 0) -> Int {
        if let value = self[key] as? Int {
            return value
        } else {
            return defaultValue
        }
    }
            
    func stringForKey(_ key:Key, defaultValue:String = "") -> String {
        if let value = self[key] as? String {
            return value
        } else {
            return defaultValue
        }
    }
                
    
}
