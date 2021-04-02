//
//  Encodable+toJson.swift
//
//  Created by Todd Bowden on 8/22/19.
//

import Foundation

public extension Encodable {

    func toJsonData() throws -> Data {
        let encoder = JSONEncoder()
        encoder.outputFormatting = [.sortedKeys]
        encoder.dataEncodingStrategy = .base64
        return try encoder.encode(self)
    }

    func toJsonString(prettyPrinted: Bool = true) throws -> String {
        let encoder = JSONEncoder()
        encoder.dataEncodingStrategy = .base64
        if prettyPrinted {
            encoder.outputFormatting = .prettyPrinted
        }
        let jsonData = try encoder.encode(self)
        return try String(utf8Data: jsonData)
    }

}
