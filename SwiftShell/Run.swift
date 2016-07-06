//
//  Run.swift
//  SwiftShell
//
//  Created by Justin Jia on 4/15/16.
//  Copyright © 2016 SwiftShell. The MIT License (MIT).
//

import Foundation

public func run(command: String, arguments: [String], input: String? = nil) -> String {
    return run(path: String(which(command).characters.dropLast()), arguments: arguments, input: input)
}

func run(path: String, arguments: [String], input: String? = nil) -> String {
    return Task.run(path, arguments: arguments, input: Pipe(inputString: input)).outputString ?? ""
}
