//
//  SwiftUIView.swift
//  
//
//  Created by yugo.sugiyama on 2022/11/04.
//

import SwiftUI
import FunctionA
import FunctionB
import FunctionC
import CommonPackage

public struct BaseView: View {
    public init() {}

    public var body: some View {
        TabView {
            FunctionAView()
                .tabItem {
                    Text(L10n.Tab.FeatureA.title)
                    Image(systemName: "a.circle.fill")
                }
            FunctionBWrapperView()
                .tabItem {
                    Text(L10n.Tab.FeatureB.title)
                    Image(systemName: "b.circle.fill")
                }
            FunctionCWrapperView()
                .tabItem {
                    Text(L10n.Tab.FeatureC.title)
                    Image(systemName: "c.circle.fill")
                }
        }
    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
