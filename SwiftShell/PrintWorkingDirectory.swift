//
//  PrintWorkingDirectory.swift
//  SwiftShell
//
//  Created by Justin Jia on 4/15/16.
//  Copyright © 2016 SwiftShell. The MIT License (MIT).
//

import Foundation

public func pwd() -> String {
    print(command: "pwd")
    var buffer: [Int8] = Array(repeating: 0, count: Int(PATH_MAX))
    getcwd(&buffer, buffer.count)
    let output = String(cString: buffer) ?? ""
    print(output)
    return output
}
