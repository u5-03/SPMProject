//
//  FunctionTableCell.swift
//  
//
//  Created by yugo.sugiyama on 2022/11/20.
//

import UIKit
import CommonPackage
import SwiftExtensions

final class FunctionTableCell: UITableViewCell, Reusable {

    @IBOutlet private weak var cellImageView: UIImageView!
    @IBOutlet private weak var cellLabel: UILabel!

    func setModel(model: TableModel) {
        cellImageView.image = model.image
        cellLabel.text = model.text
    }
}
