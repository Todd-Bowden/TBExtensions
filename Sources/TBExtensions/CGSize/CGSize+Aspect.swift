//
//  CGSize+Aspect.swift
//
//  Created by Todd Bowden on 2/4/21.
//

import Foundation
import CoreGraphics

public extension CGSize {
    
    func aspectFit(size: CGSize, tolerance: CGFloat = 1) -> CGRect {
        guard self != size else { return CGRect(origin: CGPoint.zero, size: size) }
        
        let heightScale = size.height / self.height
        let widthScale = size.width / self.width
        let scale = heightScale < widthScale ? heightScale : widthScale
        
        var newWidth = floor(self.width * scale)
        var newHeight = floor(self.height * scale)
        if abs(newWidth - size.width) <= tolerance { newWidth = size.width }
        if abs(newHeight - size.height) <= tolerance { newHeight = size.height }
        let newSize = CGSize(width: newWidth, height: newHeight)
        
        var x = round((size.width - newSize.width) / 2)
        var y = round((size.height - newSize.height) / 2)
        if abs(0 - x) <= tolerance { x = 0 }
        if abs(0 - y) <= tolerance { y = 0 }
        
        return CGRect(origin: CGPoint(x: x, y: y), size: newSize)
    }
    
    func aspectFill(size: CGSize, tolerance: CGFloat = 1) -> CGRect {
        guard self != size else { return CGRect(origin: CGPoint.zero, size: size) }
        
        let heightScale = size.height / self.height
        let widthScale = size.width / self.width
        let scale = heightScale > widthScale ? heightScale : widthScale
        
        var newWidth = floor(self.width * scale)
        var newHeight = floor(self.height * scale)
        if abs(newWidth - size.width) <= tolerance { newWidth = size.width }
        if abs(newHeight - size.height) <= tolerance { newHeight = size.height }
        let newSize = CGSize(width: newWidth, height: newHeight)
        
        var x = round((newSize.width - size.width) / 2)
        var y = round((newSize.height - size.height) / 2)
        if abs(0 - x) <= tolerance { x = 0 }
        if abs(0 - y) <= tolerance { y = 0 }
        
        return CGRect(origin: CGPoint(x: x, y: y), size: newSize)
    }
}
