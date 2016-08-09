//
//  PrintWorkingDirectory.swift
//  SwiftShell
//
//  Created by Justin Jia on 4/15/16.
//  Copyright © 2016 SwiftShell. The MIT License (MIT).
//

import Foundation

public func pwd(folding: Bool = false, unlessExceeds limit: Int? = nil) -> String {
    print(command: "pwd")
    let output = currentPath(folding: folding, unlessExceeds: limit)
    print(output)
    return output
}

func currentPath(folding: Bool = false, unlessExceeds limit: Int? = nil) -> String {
    var buffer: [Int8] = Array(repeating: 0, count: Int(PATH_MAX))
    getcwd(&buffer, buffer.count)
    var output = String(cString: buffer) ?? ""
    
    guard folding == true, limit == nil || limit > output.characters.count else { return output }
    
    let pathComponents = output.characters.split { $0 == "/" }.map(String.init)
    guard pathComponents.count > 2 else { return output }
    
    if let firstComponent = pathComponents.first, let lastComponent = pathComponents.last {
        output = "/" + firstComponent + "/.../" + lastComponent
    }
    
    return output
}
