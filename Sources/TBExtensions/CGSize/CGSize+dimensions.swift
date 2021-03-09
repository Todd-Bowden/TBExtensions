//
//  CGSize+dimensions.swift
//
//  Created by Todd Bowden on 11/24/19.
//

import Foundation
import UIKit

extension CGSize {

    var lesserDimension: CGFloat {
        return self.width < self.height ? self.width : self.height
    }

    var greaterDimension: CGFloat {
        return self.width > self.height ? self.width : self.height
    }
    
}
