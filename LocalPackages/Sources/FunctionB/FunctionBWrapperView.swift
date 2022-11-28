//
//  FunctionBWrapperView.swift
//  
//
//  Created by yugo.sugiyama on 2022/11/04.
//

import UIKit
import SwiftUI
import CommonPackage

public struct FunctionBWrapperView: UIViewRepresentable {
    public init() {}

    public func makeUIView(context: Context) -> UIView {
        return FunctionBView()
    }

    public func updateUIView(_ uiView: UIView, context: Context) {}
}
