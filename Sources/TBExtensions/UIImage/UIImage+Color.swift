//
//  UIImage+Color.swift
//
//  Copyright © 2016 Todd Bowden. All rights reserved.
//

#if canImport(UIKit)

import Foundation
import UIKit

public extension UIImage {
    
    func imageWithColor(_ color: UIColor) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(self.size, false, 0);
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        
        context.translateBy(x: 0, y: self.size.height)
        context.scaleBy(x: 1.0, y: -1.0)
        
        let bounds = CGRect(x: 0, y: 0, width: self.size.width, height: self.size.height)
        
        guard let cgImage = self.cgImage else { return nil }
        context.clip(to: bounds, mask: cgImage)
        context.setFillColor(color.cgColor)
        context.fill(bounds)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        return image
    }
}

#endif

