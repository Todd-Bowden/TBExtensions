//
//  Data+unsafePointer.swift
//

import Foundation

extension Data {

    var toUnsafeMutablePointerBytes: UnsafeMutablePointer<UInt8> {
        let pointerBytes = UnsafeMutablePointer<UInt8>.allocate(capacity: self.count)
        self.copyBytes(to: pointerBytes, count: self.count)
        return pointerBytes
    }

    var toUnsafePointerBytes: UnsafePointer<UInt8> {
        return UnsafePointer(self.toUnsafeMutablePointerBytes)
    }





}
