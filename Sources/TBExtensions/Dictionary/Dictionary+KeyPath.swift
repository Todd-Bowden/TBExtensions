//
//  Dictionary+KeyPath.swift
//
//  Created by Todd Bowden on 1/20/18.
//  Copyright © 2018 Todd Bowden. All rights reserved.
//

import Foundation

extension Dictionary {
    
    subscript(keyPath keyPath: String) -> Any? {
        get {
            return self[keyPath: keyPath.components(separatedBy: ".")]
        }
    }
    
    subscript(keyPath keyPath: [String]) -> Any? {
        get {
            guard let dict = self as? [String:Any] else { return nil }
            guard let key = keyPath.first else { return nil }
            var remainingKeyPath = keyPath
            remainingKeyPath.removeFirst()
            if remainingKeyPath.count > 0 {
                if let nestedDict = dict[key] as? [String:Any] {
                    // recursive call
                    return nestedDict[keyPath: remainingKeyPath]
                } else {
                    // invalid nested dict
                    return nil
                }
            } else {
                // return item
                return dict[key]
            }
        }
    }
}
