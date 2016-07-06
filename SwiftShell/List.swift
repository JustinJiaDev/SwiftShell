//
//  List.swift
//  SwiftShell
//
//  Created by Justin Jia on 4/15/16.
//  Copyright © 2016 SwiftShell. The MIT License (MIT).
//

import Foundation

public enum ListOption: String {
    case all = "-a"
    case longFormat = "-l"
}

public func ls(_ options: ListOption...) -> String {
    return run(command: #function, arguments: options.map { $0.rawValue })
}
