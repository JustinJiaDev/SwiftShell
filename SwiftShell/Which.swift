//
//  Which.swift
//  SwiftShell
//
//  Created by Justin Jia on 5/21/16.
//  Copyright © 2016 SwiftShell. The MIT License (MIT).
//

import Foundation

public enum WhichOption: String {
    case all = "-a"
    case silent = "-s"
}

public func which(_ name: String, options: WhichOption...) -> String {
    return execute(path: "/usr/bin/which", arguments: options.map { $0.rawValue } + [name])
}
