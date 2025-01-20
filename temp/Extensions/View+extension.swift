//
//  View+extension.swift
//  temp
//
//  Created by Thinkwik 27 on 14/06/23.
//

import UIKit
import Foundation

class MyTapGestureRecognizer: UITapGestureRecognizer {
    var action : (()->Void)? = nil
}

extension UIView {
        @objc func handleTapOfView(_ sender: MyTapGestureRecognizer) {
            if sender.action != nil {
                sender.action!()
            }
        }
        
        func addTapGesture(action : @escaping ()->Void ){
            let tap = MyTapGestureRecognizer(target: self , action: #selector(self.handleTapOfView(_:)))
            tap.action = action
            tap.numberOfTapsRequired = 1
            self.addGestureRecognizer(tap)
            self.isUserInteractionEnabled = true
            
        }
    func setShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = Colors.bg_cell.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 0, height: 2)
        layer.shadowRadius = 10
        //        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 0
    }
    
    
}
