//
//  Pipe.swift
//  SwiftShell
//
//  Created by Justin Jia on 5/21/16.
//  Copyright © 2016 SwiftShell. All rights reserved.
//

import Foundation

public typealias Pipe = NSPipe
public typealias Input = Pipe
public typealias Output = Pipe

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

public typealias FileHandle = NSFileHandle

extension NSFileHandle {

    func readString() -> String? {
        return String(data: readDataToEndOfFile(), encoding: NSUTF8StringEncoding)
    }

    func writeString(string: String?) {
        guard let data = string?.dataUsingEncoding(NSUTF8StringEncoding) else {
            return
        }
        seekToFileOffset(0)
        writeData(data)
        truncateFileAtOffset(offsetInFile)
    }

}
