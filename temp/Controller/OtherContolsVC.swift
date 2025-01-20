//
//  OtherContolsVC.swift
//  temp
//
//  Created by Thinkwik 27 on 06/06/23.
//

import UIKit

class OtherContolsVC: UIViewController {
    
    
    @IBOutlet weak var lblButton: UILabel!
    @IBOutlet weak var lblSwitch: UILabel!
    @IBOutlet weak var btnBlack: UIButton!
    @IBOutlet weak var btnWhite: UIButton!
    @IBOutlet weak var btnYellow: UIButton!
    @IBOutlet weak var btnPurple: UIButton!
    @IBOutlet var viewMain: UIView!
    @IBOutlet weak var brnOpen: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUI()
    }
    
    func setUI() {
        self.btnBlack.layer.cornerRadius = 10
        self.btnBlack.dropShadow(scale: true)
        self.btnWhite.layer.cornerRadius = 10
        self.btnWhite.dropShadow(scale: true)
        self.btnYellow.layer.cornerRadius = 10
        self.btnYellow.dropShadow(scale: true)
        self.btnPurple.layer.cornerRadius = 10
        self.btnPurple.dropShadow(scale: true)
        self.brnOpen.layer.cornerRadius = 10
        self.brnOpen.dropShadow(scale: true)
    }
    

    @IBAction func btnBlackTapped(_ sender: Any) {
        self.showToast(message: "Black Tapped", font: .systemFont(ofSize: 12))
        self.viewMain.backgroundColor = Colors.color_black
        
    }
    @IBAction func btnWhiteTapped(_ sender: Any) {
        self.showToast(message: "White Tapped", font: .systemFont(ofSize: 12))
        self.viewMain.backgroundColor = Colors.color_white
    }
    
    @IBAction func btnYellowTapped(_ sender: Any) {
        self.showToast(message: "Yellow Tapped", font: .systemFont(ofSize: 12))
        self.viewMain.backgroundColor = Colors.color_yellow
    }
    
    @IBAction func btnPurpleTapped(_ sender: Any) {
        self.showToast(message: "Purple Tapped", font: .systemFont(ofSize: 12))
        self.viewMain.backgroundColor = Colors.color_purple
    }
    
    @IBAction func btnOpenTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "MenuVC") as! MenuVC
        vc.modalPresentationStyle = .overCurrentContext
        vc.view.alpha = 0.0
        self.present(vc, animated: false, completion: {
            UIView.animate(withDuration: 1.0) {
                vc.view.alpha = 1.0
            }
        })
    }
    
    @IBAction func changeSwitch(_ sender: Any) {
        if #available(iOS 13.0, *) {
             let appDelegate = UIApplication.shared.windows.first
            if (sender as AnyObject).isOn {
                    appDelegate?.overrideUserInterfaceStyle = .dark
                      return
                 }
             appDelegate?.overrideUserInterfaceStyle = .light
             return
        }
    }
    
}

extension UIColor {
    
   static func setColor(lightColor: UIColor, darkColor: UIColor) -> UIColor {
        if #available(iOS 13, *) {
            return UIColor{ (traitCollection) -> UIColor in
                return traitCollection.userInterfaceStyle == .light ? lightColor : darkColor
            }
        } else {
            return lightColor
        }
    }
    
}
