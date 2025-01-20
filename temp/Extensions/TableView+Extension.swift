//
//  TableView+Extension.swift
//  temp
//
//  Created by Thinkwik 27 on 11/07/23.
//

import Foundation
import UIKit

extension UITableView {
    
    func register(nibName: String) {
        self.register(.init(nibName: nibName, bundle: nil), forCellReuseIdentifier: nibName)
    }
    
}
