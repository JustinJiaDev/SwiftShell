//
//  Echo.swift
//  SwiftShell
//
//  Created by Justin Jia on 4/15/16.
//  Copyright © 2016 SwiftShell. The MIT License (MIT).
//

import Foundation

public enum EchoOption: String {
    case noNewline = "-n" // Do not print the trailing newline character.
}

public func echo(_ string: String, options: EchoOption...) -> String {
    return run("echo", with: options.map { $0.rawValue } + [string])
}
