//
//  TestingVC.swift
//  temp
//
//  Created by Thinkwik 27 on 08/06/23.
//

import SwiftToast
import UIKit

class TestingVC: UIViewController {
    
    var strURL = ""
    var imgName = ""
    
    @IBOutlet weak var viewOfData: UIView! {
        didSet {
            self.viewOfData.setShadow(scale: true)
            self.viewOfData.layer.cornerRadius = 15
            self.viewOfData.layer.borderColor = Colors.bg_cell.cgColor
            self.viewOfData.layer.borderWidth = 1
        }
    }
    
    @IBOutlet weak var imgData: CustomImageView! {
        
        didSet {
            self.imgData.layer.cornerRadius = 15
        }
    }
    
    @IBOutlet weak var lblNumber: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemGray5
        let url = URL(string: strURL)!
        if self.strURL != "" && self.imgName != "" {
            self.imgData.loadImage(url: url)
            self.lblNumber.text = self.imgName
        }
    }
    
}
