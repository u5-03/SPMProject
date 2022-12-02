//
//  BasePackage.swift
//  
//
//  Created by yugo.sugiyama on 2022/11/27.
//

import Foundation

struct BasePackage {
    let text = "Hello, World!"

    public func printMethod() {
        print("Test") // This must be warned by SwiftLint
    }
}
