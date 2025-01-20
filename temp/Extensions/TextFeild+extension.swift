//
//  TextFeild+extension.swift
//  temp
//
//  Created by Thinkwik 27 on 06/06/23.
//

import Foundation
import UIKit

extension UITextField {
    
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
    
    enum Direction
    {
        case Left
        case Right
    }
    
    func setImage(direction:Direction,imageName:String,Frame:CGRect,backgroundColor:UIColor)
    {
        let View = UIView(frame: CGRect(x: Frame.origin.x, y: Frame.origin.y, width: Frame.size.width + 25, height: Frame.size.height))
        View.backgroundColor = backgroundColor
        
        let imageView = UIImageView(frame: Frame)
        imageView.image = UIImage(named: imageName)
        imageView.tintColor = .white
        View.addSubview(imageView)
        if Direction.Left == direction
        {
            self.leftViewMode = .always
            self.leftView = View
        }
        else
        {
            self.rightViewMode = .always
            self.rightView = View
        }
    }
    
    var placeholderColors: UIColor? {
        get {
            return self.placeholderColors
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: newValue!])
        }
    }
    
    func leftImage(ImageviewNamed:String)
    {
        let imgview = UIImageView(frame: CGRect(x: 10, y: 10, width: 20, height: 20))
        imgview.image = UIImage(named: ImageviewNamed)
        let imgviewContainer = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imgviewContainer.addSubview(imgview)
        leftView = imgviewContainer
        leftViewMode = .always
        self.tintColor = Colors.color_black
    }
    
    func setIcon(_ image: UIImage) {
        let iconView = UIImageView(frame:
                                    CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame:
                                                CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
    
    func setRightViewIcon(icon: UIImage) {
        let btnView = UIButton(frame: CGRect(x: 0, y: 0, width: 15, height: 15))
        btnView.setImage(icon, for: .normal)
        btnView.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 3)
        self.rightViewMode = .always
        self.rightView = btnView
    }
    
}
