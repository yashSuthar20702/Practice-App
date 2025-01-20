//
//  colorDetailVC.swift
//  temp
//
//  Created by Thinkwik 27 on 06/06/23.
//

import UIKit

class ColorDetailVC: UIViewController {

    @IBOutlet weak var imgColor: UIImageView!
    @IBOutlet weak var lblColorName: UILabel!
    
    var colorsOBJ : DogStruct?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUI()
        self.setColors()
    }
    
    func setUI() {
        self.imgColor.layer.borderWidth = 0.5
        self.imgColor.layer.borderColor = Colors.color_black.cgColor
        self.imgColor.layer.cornerRadius = 10
    }
    
    func setColors() {
        if colorsOBJ != nil {
//            self.imgColor.image = UIImage(named: colorsOBJ!.colorImage!)
//            self.lblColorName.text = colorsOBJ!.colorName
            self.imgColor.image = UIImage(named: colorsOBJ!.DogName!)
        }
    }
    
}
