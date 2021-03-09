//
//  Dictionary+QueryItems.swift
//
//  Copyright © 2016 Todd Bowden. All rights reserved.
//

import Foundation

public extension Dictionary {
    
    var urlQueryItems: [URLQueryItem] {
        var items = [URLQueryItem]()
        
        for (key,value) in self {
            if let k = key as? String, let v = value as? String {
                let item = URLQueryItem(name: k, value: v)
                items.append(item)
            }
        }
        return items
    }
    
    var toURL: URL? {
        var components = URLComponents()
        components.queryItems = self.urlQueryItems
        return components.url
    }
    
}
