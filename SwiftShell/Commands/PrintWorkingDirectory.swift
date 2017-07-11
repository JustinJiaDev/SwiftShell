//
//  PrintWorkingDirectory.swift
//  SwiftShell
//
//  Created by Justin Jia on 4/15/16.
//  Copyright © 2016 SwiftShell. The MIT License (MIT).
//

import Foundation

public func pwd(folding: Bool = false, unlessExceeds limit: Int = 0) -> String {
    print(command: "pwd")
    let output = Process.currentPath(folding: folding, unlessExceeds: limit)
    print(output)
    return output
}
