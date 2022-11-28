//
//  FunctionAView.swift
//  
//
//  Created by yugo.sugiyama on 2022/11/04.
//

import SwiftUI
import CommonPackage

public struct FunctionAView: View {
    public init() {}

    public var body: some View {
        VStack {
            ImageAssets.functionAImage.swiftUIImage
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("SwiftUI page ↓Common Package Asset Color↓")
            Rectangle()
                .foregroundColor(CommonAssets.ColorAssets.testColor.swiftUIColor)
                .frame(height: 100)
        }
    }
}

struct FunctionAView_Previews: PreviewProvider {
    static var previews: some View {
        FunctionAView()
    }
}
