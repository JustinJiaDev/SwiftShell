//
//  Print.swift
//  SwiftShell
//
//  Created by Justin Jia on 7/5/16.
//  Copyright © 2016 SwiftShell. All rights reserved.
//

import Foundation

func print(command: String, with arguments: [String]? = nil) {
    var output = "SwiftShell $ \(command)"
    if let arguments = arguments {
        output += " " + arguments.reduce("", combine:+)
    }
    print(output)
}
