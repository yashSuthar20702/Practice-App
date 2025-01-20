//
//  TempTVC.swift
//  temp
//
//  Created by Thinkwik 27 on 05/06/23.
//

import UIKit

class TempTVC: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imgColor: CustomImageView! {
        didSet {
            self.imgColor.layer.borderColor = Colors.bg_cell.cgColor
            self.imgColor.layer.borderWidth = 1
            self.imgColor.layer.cornerRadius = 15
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setColorData(color: ColorsList) {
        
        self.lblName.text = color.colorName ?? ""
        self.imgColor.image = UIImage(named: color.colorImage!)
    }
    
}
