//
//  Echo.swift
//  SwiftShell
//
//  Created by Justin Jia on 4/15/16.
//  Copyright © 2016 SwiftShell. All rights reserved.
//

import Foundation

public func echo(_ string: String) -> String {
    return execute(command: #function, arguments: [string])
}
