//
//  FunctionTableView.swift
//  
//
//  Created by yugo.sugiyama on 2022/11/20.
//

import UIKit
import CommonPackage

struct TableModel {
    let text: String
    let image: UIImage
}

public final class FunctionTableView: UITableView {
    private let dataList: [TableModel] = [
        .init(text: "Row0", image: ImageAssets.functionCImage0.image),
        .init(text: "Row1", image: ImageAssets.functionCImage1.image),
        .init(text: "Row2", image: ImageAssets.functionCImage2.image),
        .init(text: "Row3", image: ImageAssets.functionCImage3.image),
        .init(text: "Row4", image: ImageAssets.functionCImage4.image)
    ]

    public override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        commonInit()
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    private func commonInit() {
        dataSource = self
        register(FunctionTableCell.nib(bundle: .module), forCellReuseIdentifier: FunctionTableCell.reuseIdentifier)
        rowHeight = 120
    }

    public func printMethodFC() {
        print("Test") // This must be warned by SwiftLint
    }
}

extension FunctionTableView: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseIdentifier = FunctionTableCell.reuseIdentifier
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? FunctionTableCell else {
            return UITableViewCell()
        }
        cell.setModel(model: dataList[indexPath.row])
        return cell
    }
}
