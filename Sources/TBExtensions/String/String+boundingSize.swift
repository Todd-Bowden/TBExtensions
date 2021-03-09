//
//  String+Bounds.swift
//
//  Copyright © 2017 Todd Bowden. All rights reserved.
//

#if canImport(UIKit)

import Foundation
import UIKit

public extension String {
    
    func boundingSize(font: UIFont, constrainedToSize size: CGSize, lineBreakMode: NSLineBreakMode = .byWordWrapping) -> CGSize {
        let style = NSMutableParagraphStyle()
        style.lineBreakMode = lineBreakMode
        let attributes = [NSAttributedString.Key.font: font, NSAttributedString.Key.paragraphStyle: style]
        let frame = self.boundingRect(with: size, options: [.usesLineFragmentOrigin], attributes: attributes, context: nil)
        return CGSize(width: ceil(frame.size.width), height: ceil(frame.size.height))
    }

}

#endif
