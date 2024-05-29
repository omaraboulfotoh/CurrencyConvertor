//
//  TableView+Ext.swift
//  CurrencyConvertor
//
//  Created by OmarAboulfotoh on 24/02/2023.
//
import UIKit
extension UITableView {
    func registerCellNib<Cell: UITableViewCell>(cellClass: Cell.Type){
        self.register(UINib(nibName: String(describing: Cell.self), bundle: nil), forCellReuseIdentifier: String(describing: Cell.self))
    }
    func dequeue<Cell: UITableViewCell>() -> Cell{
        let identifier = String(describing: Cell.self)
        guard let cell = self.dequeueReusableCell(withIdentifier: identifier) as? Cell else {
            fatalError("Error in cell")
        }
        return cell
    }
}
extension UITableViewCell {
    static var identifer: String {
        return String(describing: self)
    }
}
