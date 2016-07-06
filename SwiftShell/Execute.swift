//
//  Execute.swift
//  SwiftShell
//
//  Created by Justin Jia on 4/15/16.
//  Copyright © 2016 SwiftShell. All rights reserved.
//

import Foundation

public func execute(command: String, arguments: [String], input: String? = nil) -> String {
    return execute(path: String(which(command).characters.dropLast()), arguments: arguments, input: input)
}

func execute(path: String, arguments: [String], input: String? = nil) -> String {
    return Task.run(path, arguments: arguments, input: Pipe(inputString: input)).outputString ?? ""
}
