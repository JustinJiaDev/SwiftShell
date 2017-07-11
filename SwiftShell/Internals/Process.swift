//
//  Process.swift
//  SwiftShell
//
//  Created by Justin Jia on 5/21/16.
//  Copyright © 2016 SwiftShell. The MIT License (MIT).
//

import Foundation

extension Process {

    static func run(path: String, arguments: [String] = [], output: Pipe? = nil, input: Pipe? = nil) -> Pipe {
        let output = output ?? Pipe()

        let process = Process()
        process.launchPath = path
        process.arguments = arguments
        process.standardOutput = output
        process.standardInput = input
        process.launch()

        return output
    }
    
    static func currentPath(folding: Bool = false, unlessExceeds limit: Int = 0) -> String {
        var buffer: [Int8] = Array(repeating: 0, count: Int(PATH_MAX))
        getcwd(&buffer, buffer.count)
        var output = String(cString: buffer)
        
        guard folding == true, output.characters.count > limit else { return output }
        
        let pathComponents = output.characters.split { $0 == "/" }.map(String.init)
        guard pathComponents.count > 2 else { return output }
        
        if let firstComponent = pathComponents.first, let lastComponent = pathComponents.last {
            output = "/" + firstComponent + "/.../" + lastComponent
        }
        
        return output
    }


}
