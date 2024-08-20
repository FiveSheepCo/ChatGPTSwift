//
//  File.swift
//  
//
//  Created by Alfian Losari on 02/03/23.
//

import Foundation

extension String: Foundation.CustomNSError {
    
    public var errorUserInfo: [String : Any] {
        [
            NSLocalizedDescriptionKey: self
        ]
    }
}
