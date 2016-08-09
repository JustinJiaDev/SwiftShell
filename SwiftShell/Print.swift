//
//  Print.swift
//  SwiftShell
//
//  Created by Justin Jia on 7/5/16.
//  Copyright © 2016 SwiftShell. All rights reserved.
//

import Foundation

func print(command: String, with arguments: [String]? = nil) {
    var output = "\(currentPath(folding: true)) $ \(command)"
    if let arguments = arguments {
        output += arguments.reduce("", { $0 + " " + $1 })
    }
    print(output)
}
