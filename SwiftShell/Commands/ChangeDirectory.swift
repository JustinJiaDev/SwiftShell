//
//  ChangeDirectory.swift
//  SwiftShell
//
//  Created by Justin Jia on 4/15/16.
//  Copyright © 2016 SwiftShell. The MIT License (MIT).
//

import Foundation

public func cd(_ name: String = String(cString: getenv("HOME"))) {
    print(command: "cd", with: [name])
    chdir(name)
}
