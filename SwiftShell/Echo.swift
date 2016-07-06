//
//  Echo.swift
//  SwiftShell
//
//  Created by Justin Jia on 4/15/16.
//  Copyright © 2016 SwiftShell. The MIT License (MIT).
//

import Foundation

public func echo(_ string: String) -> String {
    return run("echo", with: [string])
}
