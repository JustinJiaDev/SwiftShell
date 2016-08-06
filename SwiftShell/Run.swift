//
//  Run.swift
//  SwiftShell
//
//  Created by Justin Jia on 4/15/16.
//  Copyright © 2016 SwiftShell. The MIT License (MIT).
//

import Foundation

public func run(_ command: String, with arguments: [String], input: String? = nil) -> String {
    print(command: command, with: arguments)
    guard let path = path(of: command) else { return "Unknown Command" }
    guard let output = run(at: path, with: arguments, input: input) else { return "" }
    print(output.trimmedLastEndOfLine())
    return output
}

func run(at path: String, with arguments: [String], input: String? = nil) -> String? {
    return Task.run(path: path, arguments: arguments, input: Pipe(inputString: input)).outputString
}

func path(of command: String) -> String? {
    return run(at: "/usr/bin/which", with: [command])?.trimmedLastEndOfLine()
}
