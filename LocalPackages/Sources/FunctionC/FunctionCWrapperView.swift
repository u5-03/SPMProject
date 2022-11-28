//
//  FunctionCWrapperView.swift
//  
//
//  Created by yugo.sugiyama on 2022/11/22.
//

import UIKit
import SwiftUI
import CommonPackage

public struct FunctionCWrapperView: UIViewRepresentable {
    public init() {}

    public func makeUIView(context: Context) -> UIView {
        return FunctionTableView()
    }

    public func updateUIView(_ uiView: UIView, context: Context) {}
}
