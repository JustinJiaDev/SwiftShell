//
//  Pipe.swift
//  SwiftShell
//
//  Created by Justin Jia on 5/21/16.
//  Copyright © 2016 SwiftShell. All rights reserved.
//

import Foundation

extension Pipe {

    convenience init?(inputString: String?) {
        guard let inputString = inputString else {
            return nil
        }
        self.init()
        self.inputString = inputString
    }

    convenience init?(outputString: String?) {
        guard let outputString = outputString else {
            return nil
        }
        self.init()
        self.outputString = outputString
    }

    var outputString: String? {
        set {
            fileHandleForReading.writeString(newValue)
        }

        get {
            return fileHandleForReading.readString()
        }
    }

    var inputString: String? {
        set {
            fileHandleForWriting.writeString(newValue)
        }

        get {
            return fileHandleForWriting.readString()
        }
    }

}

extension FileHandle {

    func readString() -> String? {
        return String(data: readDataToEndOfFile(), encoding: .utf8)
    }

    func writeString(_ string: String?) {
        guard let data = string?.data(using: .utf8) else {
            return
        }
        seek(toFileOffset: 0)
        write(data)
        truncateFile(atOffset: offsetInFile)
    }

}
