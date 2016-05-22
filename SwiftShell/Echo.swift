//
//  Echo.swift
//  SwiftShell
//
//  Created by Justin Jia on 4/15/16.
//  Copyright © 2016 SwiftShell. All rights reserved.
//

import Foundation

public func echo(string: String) -> String {
    return execute(command: "echo", arguments: [string])
}
