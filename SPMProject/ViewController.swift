//
//  ViewController.swift
//  SPMProject
//
//  Created by yugo.sugiyama on 2022/11/03.
//

import UIKit
import BasePackage

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addEdgeConstrainedSubView(view)
    }
}

