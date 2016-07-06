//
//  Task.swift
//  SwiftShell
//
//  Created by Justin Jia on 5/21/16.
//  Copyright © 2016 SwiftShell. All rights reserved.
//

import Foundation

extension Task {

    static func run(_ path: String, arguments: [String] = [], output: Pipe? = nil, input: Pipe? = nil) -> Pipe {
        let output = output ?? Pipe()

        let task = Task()
        task.launchPath = path
        task.arguments = arguments
        task.standardOutput = output
        task.standardInput = input
        task.launch()

        return output
    }

}
