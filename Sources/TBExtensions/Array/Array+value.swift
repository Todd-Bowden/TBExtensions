//
//  File.swift
//  
//
//  Created by Todd Bowden on 5/22/21.
//

import Foundation

extension Array {
    
    func value(index: Int, default: Element) -> Element {
        if index < self.count {
            return self[index]
        } else {
            return `default`
        }
    }
    
}
