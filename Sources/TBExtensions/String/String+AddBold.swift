//
//  String+AddBold.swift
//
//  Created by Todd Bowden on 6/3/16.
//  Copyright © 2016 Todd Bowden. All rights reserved.
//

import Foundation
import UIKit

extension String {
    
    func addAttributedBold(fontSize: CGFloat, weight: UIFont.Weight, color: UIColor? = nil) -> NSAttributedString {
        let font = UIFont.systemFont(ofSize: fontSize, weight: weight)
        let attributes:[NSAttributedString.Key:Any] = [NSAttributedString.Key.font: font]
        let boldFont = UIFont.systemFont(ofSize: fontSize, weight: UIFont.Weight.heavy)
        var boldAttributes:[NSAttributedString.Key:Any] = [NSAttributedString.Key.font: boldFont]
        if let color = color {
            boldAttributes[NSAttributedString.Key.foregroundColor] = color
        }
        let splitString = self.components(separatedBy: "|")
        
        let attributedString = NSMutableAttributedString()
        for i in 0..<splitString.count {
            let s = splitString[i]
            var a = attributes
            if i % 2 == 1 {
                a = boldAttributes
            }
            let aString = NSMutableAttributedString(string:s, attributes: a)
            attributedString.append(aString)
        }
        return attributedString
    }
    
    var removeBoldCode: String {
        return self.replacingOccurrences(of: "|", with: "")
    }
    
}
