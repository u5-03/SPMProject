//
//  UIView+Nib.swift
//  
//
//  Created by yugo.sugiyama on 2022/11/22.
//

import UIKit

public extension UIView {
    func loadNib(bundle: Bundle? = nil) {
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle ?? Bundle(for: type(of: self)))
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else { return }
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: topAnchor),
            view.leadingAnchor.constraint(equalTo: leadingAnchor),
            trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
