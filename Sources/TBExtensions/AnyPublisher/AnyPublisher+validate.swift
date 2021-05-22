//
//  Publisher+validate.swift
//  
//
//  Created by Todd Bowden on 4/28/21.
//

import Foundation
import Combine


public extension AnyPublisher {
    
    enum ValidationError: Error {
        case invalidValue
    }
    
    func validate(_ isValid: @escaping (Output) -> Bool) -> AnyPublisher<Output,Error> {
        self.tryMap { (value) -> Output in
            if isValid(value) {
                return value
            } else {
                throw ValidationError.invalidValue
            }
        }.eraseToAnyPublisher()
    }
    
}

