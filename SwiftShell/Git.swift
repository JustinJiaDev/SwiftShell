//
//  Git.swift
//  SwiftShell
//
//  Created by Justin Jia on 5/21/16.
//  Copyright © 2016 SwiftShell. All rights reserved.
//

import Foundation

public enum GitCommand: String {

    case initialize = "init"
    case status = "status"
    case add = "add"
    case commit = "commit"
    case checkout = "checkout"
    case branch = "branch"
    case rebase = "rebase"

}

public typealias git = Git

public class Git {

    public static func git(command: GitCommand, arguments: [String] = []) -> String {
        return execute(command: #function, arguments: [command.rawValue] + arguments)
    }

    public static func initialize() -> String {
        return git(command: .initialize)
    }

    public static func status() -> String {
        return git(command: .status)
    }

    public static func add(_ name: String...) -> String {
        return git(command: .add, arguments: name)
    }

    public enum CommitOption: String {
        case all = "-a"
    }

    public static func commit(_ message: String, options: CommitOption...) -> String {
        return git(command: .commit, arguments: ["-m", message] + options.map { $0.rawValue })
    }

}
