//
//  PrintWorkingDirectory.swift
//  SwiftShell
//
//  Created by Justin Jia on 4/15/16.
//  Copyright © 2016 SwiftShell. The MIT License (MIT).
//

import Foundation

public func pwd(folding: Bool = false) -> String {
    print(command: "pwd")
    var buffer: [Int8] = Array(repeating: 0, count: Int(PATH_MAX))
    getcwd(&buffer, buffer.count)
    var output = String(cString: buffer) ?? ""
    
    let outputArr = output.characters.split{$0 == "/"}.map(String.init)

    if(output.characters.count > 15 && folding == true) {
        output = outputArr.first! + "/.../" + outputArr.last!
        print(output)
    }
    
    print(output)
    return output
}
