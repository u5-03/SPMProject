//
//  FunctionBView.swift
//  
//
//  Created by yugo.sugiyama on 2022/11/04.
//

import UIKit
import CommonPackage

public final class FunctionBView: UIView {

    @IBOutlet public weak var functionBUpperLabel: UILabel! {
        didSet {
            functionBUpperLabel.text = "Localize text: \(L10n.Tab.FeatureB.title)"
        }
    }

    @IBOutlet public weak var functionBBottomLabel: UILabel! {
        didSet {
            functionBBottomLabel.text = "UIKit page ↓CommonPackage Asset Color↓"
        }
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    private func commonInit() {
        loadNib(bundle: .module)
    }

    public func printMethodFB() {
        print("Test") // This must be warned by SwiftLint
    }
}
