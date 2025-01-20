//
//  Button+Extension.swift
//  temp
//
//  Created by Thinkwik 27 on 06/06/23.
//

import Foundation
import UIKit

extension UIButton {
    
    func dropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = Colors.color_black.cgColor
        layer.shadowOpacity = 0.2
        layer.shadowOffset = CGSize(width: 0, height: 2)
        layer.shadowRadius = 10
        //layer.shadowPath = UIBezierPath(rect: bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 0
    }
}
