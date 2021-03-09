//
//  String+utf8Data.swift
//
//  Created by Todd Bowden on 10/8/19.
//

import Foundation

extension String {
    
    enum UTF8EncodingError: Swift.Error {
        case cannotEncodeAsUTF8
    }

    func utf8Data() throws -> Data {
        guard let data = self.data(using: .utf8) else {
            throw UTF8EncodingError.cannotEncodeAsUTF8
        }
        return data
    }
    
    init(utf8Data: Data) throws {
        guard let string = String(data: utf8Data, encoding: .utf8) else {
            throw UTF8EncodingError.cannotEncodeAsUTF8
        }
        self = string
    }

}
