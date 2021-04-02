//
//  Array+Unique.swift
//
//  Created by Todd Bowden on 7/18/16.
//  Copyright © 2016 Todd Bowden. All rights reserved.
//

import Foundation

public extension Array {
    
    var uniqueStrings: [String] {
        let array = self.onlyStrings
        var uniqueArray = [String]()
        for element in array {
            if !uniqueArray.contains(element) {
                uniqueArray.append(element)
            }
        }
        return uniqueArray
    }
  
}
