//
//  OpenDirectory.swift
//  SwiftShell
//
//  Created by Justin Jia on 4/15/16.
//  Copyright © 2016 SwiftShell. All rights reserved.
//

import Foundation

public func cd(name: String = String.fromCString(getenv("HOME")) ?? "/") {
    openDirectory(name)
}

public func openDirectory(name: String = String.fromCString(getenv("HOME")) ?? "/") {
    chdir(name)
}
