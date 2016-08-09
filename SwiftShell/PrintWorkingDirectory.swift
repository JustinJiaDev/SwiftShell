//
//  PrintWorkingDirectory.swift
//  SwiftShell
//
//  Created by Justin Jia on 4/15/16.
//  Copyright © 2016 SwiftShell. The MIT License (MIT).
//

import Foundation

let foldingLimit:Int = 15

public func pwd(folding: Bool = false) -> String {
    print(command: "pwd")
    var buffer: [Int8] = Array(repeating: 0, count: Int(PATH_MAX))
    getcwd(&buffer, buffer.count)
    var output = String(cString: buffer) ?? ""
    
    let pathComponents = output.characters.split{ $0 == "/" }.map(String.init)

    if let firstPathComponents = pathComponents.first, let lastPathComponents = pathComponents.last, folding == true, output.characters.count > foldingLimit {
        output = firstPathComponents + "/.../" + lastPathComponents
    }
    
    print(output)
    return output
}
