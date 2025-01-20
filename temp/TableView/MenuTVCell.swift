//
//  MenuTVCell.swift
//  temp
//
//  Created by Thinkwik 27 on 11/07/23.
//

import UIKit

class MenuTVCell: UITableViewCell {

    @IBOutlet weak var lblMenuItem: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func setMenuData(menuName: TableMenu) {
        self.lblMenuItem.text = menuName.menuItemName!
    }
    
}

