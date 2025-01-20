//
//  SegmentedViewVC.swift
//  temp
//
//  Created by Thinkwik 27 on 05/06/23.
//

import UIKit

class SegmentedViewVC: UIViewController {

    @IBOutlet weak var ViewColor: UIView! {
        didSet {
            self.ViewColor.layer.cornerRadius = 15
            self.ViewColor.layer.borderColor = Colors.color_black.cgColor
            self.ViewColor.layer.borderWidth = 2
        }
    }
    @IBOutlet weak var segControl: UISegmentedControl! {
        didSet {
            let titleSelectedText = [NSAttributedString.Key.foregroundColor: UIColor.black]
            segControl.setTitleTextAttributes(titleSelectedText, for: .normal)
            let titleNormalText = [NSAttributedString.Key.foregroundColor: UIColor.systemGray2]
            segControl.setTitleTextAttributes(titleNormalText, for: .selected)
        }
    }
    @IBOutlet weak var imgColor: UIImageView! {
        didSet {
            self.imgColor.layer.cornerRadius = 10
            self.imgColor.layer.borderWidth = 0.5
            self.imgColor.layer.borderColor = Colors.color_black.cgColor
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateView()

    }
    
    @IBAction func segTapped(_ sender: Any) {
        self.updateView()
    }
    
    func updateView() {
        if segControl.selectedSegmentIndex == 0 {
            imgColor.image = UIImage(named: "black")
            segControl.selectedSegmentTintColor = Colors.color_black
            self.ViewColor.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.8)
        } else if segControl.selectedSegmentIndex == 1 {
            imgColor.image = UIImage(named: "white")
            segControl.selectedSegmentTintColor = Colors.color_white
            self.ViewColor.backgroundColor = Colors.color_white
        }
        else if segControl.selectedSegmentIndex == 2 {
            imgColor.image = UIImage(named: "yellow")
            segControl.selectedSegmentTintColor = UIColor.systemYellow
            self.ViewColor.backgroundColor = Colors.color_yellow
        }
        else if segControl.selectedSegmentIndex == 3 {
            imgColor.image = UIImage(named: "purple")
            segControl.selectedSegmentTintColor = Colors.color_purple
            self.ViewColor.backgroundColor = Colors.color_purple
        }
        else {
            imgColor.image = UIImage(named: "black")
            segControl.selectedSegmentTintColor = Colors.color_black
            self.ViewColor.backgroundColor = Colors.color_black
        }
    }
}
