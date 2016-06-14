//
//  PrintWorkingDirectory.swift
//  SwiftShell
//
//  Created by Justin Jia on 4/15/16.
//  Copyright © 2016 SwiftShell. All rights reserved.
//

import Foundation

public func pwd() -> String {
    var buffer: [Int8] = Array(repeating: 0, count: Int(PATH_MAX))
    getcwd(&buffer, buffer.count)
    return String(cString: buffer) ?? ""
}
