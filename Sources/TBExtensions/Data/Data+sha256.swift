//
//  Data+sha256.swift
//
//  Created by Todd Bowden on 2/27/21.
//

import Foundation
import CryptoKit

public extension Data {
    
    var sha256: Data {
        return Data(SHA256.hash(data: self))
    }
    
}
