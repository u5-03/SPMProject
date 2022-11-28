//
//  Reusable.swift
//  
//
//  Created by yugo.sugiyama on 2022/11/22.
//

import UIKit

public protocol Reusable {
    static var reuseIdentifier: String { get }
    static func nib(bundle: Bundle) -> UINib
}

public extension Reusable {
    static var reuseIdentifier: String {
        return String(describing: self)
    }

    static func nib(bundle: Bundle) -> UINib {
        return UINib(nibName: reuseIdentifier, bundle: bundle)
    }
}
