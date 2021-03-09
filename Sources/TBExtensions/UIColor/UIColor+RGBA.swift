//
//  UIColor+RGBA.swift
//
//  Created by Todd Bowden on 4/2/17.
//  Copyright © 2017 Todd Bowden. All rights reserved.
//

#if canImport(UIKit)

import Foundation
import UIKit

public extension UIColor {
    
    struct RGBAColor {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
    }
    
    var rgba: RGBAColor {
        var r:CGFloat = 0
        var g:CGFloat = 0
        var b:CGFloat = 0
        var a:CGFloat = 0
        
        getRed(&r, green: &g, blue: &b, alpha: &a)
        return RGBAColor(red: r, green: g, blue: b, alpha: a)
    }
    
}

#endif
