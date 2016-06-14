//
//  OpenDirectory.swift
//  SwiftShell
//
//  Created by Justin Jia on 4/15/16.
//  Copyright © 2016 SwiftShell. All rights reserved.
//

import Foundation

public func cd(_ name: String = String(cString: getenv("HOME")) ?? "/") {
    chdir(name)
}
