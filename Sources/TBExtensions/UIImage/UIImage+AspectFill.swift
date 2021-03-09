//
//  UIImage+AspectFill.swift
//
//  Created by Todd Bowden on 2/7/21.
//

#if canImport(UIKit)

import Foundation
import UIKit

public extension UIImage {
    
    func aspectFill(size: CGSize) -> UIImage {
        guard size != self.size else { return self }
        
        let aspectFrame = self.size.aspectFill(size: size)
        let renderer = UIGraphicsImageRenderer(size: aspectFrame.size)
        let aspectImage = renderer.image { (context) in
            self.draw(in: CGRect(origin: .zero, size: aspectFrame.size))
        }
        guard let aspectCGImage = aspectImage.cgImage else { return UIImage() }
        guard let croppedCGImage = aspectCGImage.cropping(to: aspectFrame.scale(aspectImage.scale)) else { return UIImage() }
        return UIImage(cgImage: croppedCGImage)
    }
    
}

#endif

