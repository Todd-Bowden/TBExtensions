//
//  CGRect+Scale.swift
//
//  Created by Todd Bowden on 2/7/21.
//

import Foundation
import CoreGraphics

public extension CGRect {
    
    func scale(_ scale: CGFloat) -> CGRect {
        return CGRect(
            x: self.origin.x * scale,
            y: self.origin.y * scale,
            width: self.size.width * scale,
            height: self.size.height * scale
        )
    }
    
}
