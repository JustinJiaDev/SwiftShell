//
//  SwiftShell.playground
//  SwiftShell
//
//  Created by Justin Jia on 6/5/16.
//  Copyright © 2016 SwiftShell. The MIT License (MIT).
//

import SwiftShell

func sayHello(personName: String) -> String {
    let greeting = "Hello, " + personName + "!"
    return greeting
}

print(sayHello(personName: "hooman"))

