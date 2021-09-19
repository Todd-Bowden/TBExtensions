//
//  File.swift
//  
//
//  Created by Todd Bowden on 5/22/21.
//

import Foundation

public extension Array {
    
    func value(index: Int, default: Element) -> Element {
        if index < self.count {
            return self[index]
        } else {
            return `default`
        }
    }
    
    func optionalValue(index: Int) -> Element? {
        if index < self.count {
            return self[index]
        } else {
            return nil
        }
    }
    
}
