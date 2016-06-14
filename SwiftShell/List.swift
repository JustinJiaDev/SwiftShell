//
//  List.swift
//  SwiftShell
//
//  Created by Justin Jia on 4/15/16.
//  Copyright © 2016 SwiftShell. All rights reserved.
//

import Foundation

public enum ListOption: String {
    case all = "-a"
    case longFormat = "-l"
}

public func ls(_ options: ListOption...) -> String {
    return execute(command: #function, arguments: options.map { $0.rawValue })
}
