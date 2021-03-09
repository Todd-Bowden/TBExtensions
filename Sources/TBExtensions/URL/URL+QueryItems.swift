//
//  URL+QueryItems.swift

//  Copyright © 2016 Todd Bowden. All rights reserved.
//

import Foundation

public extension URL {
    
    var dictionaryFromQueryItems: [String:String]? {
        var dict = [String:String]()
        guard let urlComponents = NSURLComponents(url: self, resolvingAgainstBaseURL: false) else { return nil }
        guard let queryItems = urlComponents.queryItems else { return nil }
        for queryItem in queryItems {
            dict[queryItem.name] = queryItem.value
        }
        return dict
    }

}
