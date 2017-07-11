//
//  String.swift
//  SwiftShell
//
//  Created by Justin Jia on 7/5/16.
//  Copyright © 2016 SwiftShell. All rights reserved.
//

import Foundation

extension String {
    func trimmedLastEndOfLine() -> String {
        guard let lastCharacter = self.characters.last, lastCharacter == "\n" else { return self }
        return String(characters.dropLast())
    }
}
