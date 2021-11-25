//
//  Color+rgb.swift
//

import Foundation
import SwiftUI

@available(OSX 11, *)
@available(iOS 14.0, *)

public extension Color {
    
    struct RGBA {
        let red: Double
        let green: Double
        let blue: Double
        let alpha: Double
    }
    
    struct RGBA255 {
        let red: UInt8
        let green: UInt8
        let blue: UInt8
        let alpha: UInt8
    }

    var rgba: RGBA? {
        guard let cgColor = self.cgColor else { return nil }
        guard let rgba = cgColor.components else { return nil }
        guard rgba.count >= 3 else { return nil }
        let r = rgba[0]
        let g = rgba[1]
        let b = rgba[2]
        var a: Double = 1
        if rgba.count >= 4 {
            a = rgba[3]
        }
        return RGBA(red: r, green: g, blue: b, alpha: a)

    }

    var rgba255: RGBA255? {
        guard let rgba = self.rgba else { return nil }
        return RGBA255(
            red: UInt8(rgba.red * 255),
            green: UInt8(rgba.green * 255),
            blue: UInt8(rgba.blue * 255),
            alpha: UInt8(rgba.alpha * 255)
        )
    }

}
