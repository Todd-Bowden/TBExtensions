//
//  File.swift
//  
//
//  Created by Todd Bowden on 7/18/22.
//

import Foundation

public extension Data {
    
    enum RandomBytesError: Error {
        case randomBytesError(Int32)
    }

    static func randomBytes(_ num: Int) throws -> Data {
        var bytes = Data(repeating: 0, count: num)
        let status = SecRandomCopyBytes(kSecRandomDefault, bytes.count, &bytes)

        guard status == errSecSuccess else  {
            throw RandomBytesError.randomBytesError(status)
        }
        return Data(bytes)
    }
}


