//
//  Open.swift
//  SwiftShell
//
//  Created by Justin Jia on 4/15/16.
//  Copyright © 2016 SwiftShell. All rights reserved.
//

import Foundation

// Workaround: `public let cd = openDirectory` will discard the default value
public func cd(name: String? = nil) -> Int {
    return openDirectory(name)
}

public func openDirectory(name: String? = nil) -> Int {
    let path = name ?? String.fromCString(getenv("HOME")) ?? "/"
    return Int(chdir(path))
}
