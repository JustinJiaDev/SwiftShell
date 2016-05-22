//
//  PrintWorkingDirectory.swift
//  SwiftShell
//
//  Created by Justin Jia on 4/15/16.
//  Copyright © 2016 SwiftShell. All rights reserved.
//

import Foundation

public let pwd = printWorkingDirectory

public func printWorkingDirectory() -> String {
    var buffer: [Int8] = Array(count: Int(PATH_MAX), repeatedValue: 0)
    getcwd(&buffer, buffer.count)
    return String.fromCString(buffer) ?? ""
}
