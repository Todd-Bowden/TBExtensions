//
//  Array+List.swift
//
//  Created by Todd Bowden on 6/11/16.
//  Copyright © 2016 Todd Bowden. All rights reserved.
//

import Foundation

public extension Array {
    
    var onlyStrings: [String] {
        var array = [String]()
        for e in self {
            if let i = e as? String {
                array.append(i)
            }
        }
        return array
    }
    
    func textList(itemPrefix: String = "", itemSuffix: String = "", and: String = "and") -> String {
        let array = self.onlyStrings
        
        if array.count == 0 { return "" }
        if array.count == 1 { return itemPrefix + array[0] + itemSuffix }
    
        var list = ""
        for i in 0..<array.count {
            list = list + itemPrefix + array[i] + itemSuffix
            if i == array.count - 2 {
                list = list + " " + and + " "
            }
            else if i < array.count - 2 {
                list = list + ", "
            }
        }
        return list
    
    }
    
}
