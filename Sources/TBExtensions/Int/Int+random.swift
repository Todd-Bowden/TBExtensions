//
//  UInt64.swift
//  
//
//  Created by Todd Bowden on 3/30/21.
//

import Foundation

public extension Int {
    
    static func random(range: ClosedRange<Int>, quantity: Int, excluding: [Int]) -> [Int] {
        var numbers = [Int]()
        for _ in 1...quantity {
            if let r = random(range: range, excluding: excluding + numbers) {
                numbers.append(r)
            }
        }
        return numbers
    }
    
    static func random(range: ClosedRange<Int>, excluding: [Int]) -> Int? {
        for _ in 0...1000 {
            let r = Int.random(in: range)
            if !excluding.contains(r) {
                return r
            }
        }
        return nil
    }
}
