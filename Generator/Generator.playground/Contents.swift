//
//  Generator.playground
//  SwiftShell
//
//  Created by Justin Jia on 6/6/16.
//  Copyright © 2016 SwiftShell. The MIT License (MIT).
//

import Foundation

struct Option {
    
    let swiftName: String
    let defaultName: String
    let explanation: String?
    
}

struct Generator {
    
    let accessScope = "public"
    let indention = "    "
    
    func generate(command: String, options: [Option]) -> String {
        var output = "\(accessScope) enum \(command.capitalized)Option: String {\n"
        for option in options {
            output += "\(indention)case \(option.swiftName) = \"\(option.defaultName)\""
            if let explanation = option.explanation {
                output += " \\\\ \(explanation.capitalized)"
            }
            output += "\n"
        }
        output += "}\n"
        return output
    }

}

let generator = Generator()

let options = [Option(swiftName: "all", defaultName: "-a", explanation: nil),
               Option(swiftName: "longFormat", defaultName: "-l", explanation: "List in long format.")]

let output = generator.generate(command: "ls", options: options)
print(output)
