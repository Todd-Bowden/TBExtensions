//
//  String+sha256.swift
//
//  Created by Todd Bowden on 2/27/21.
//

import Foundation

public extension String {
    
    var sha256: Data {
       return (self.data(using: .utf8)?.sha256) ?? Data()
    }
    
}
