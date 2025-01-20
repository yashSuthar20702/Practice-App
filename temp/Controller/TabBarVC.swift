//
//  TabBarVC.swift
//  temp
//
//  Created by Thinkwik 27 on 05/06/23.
//

import UIKit

class TabBarVC: UITabBarController , UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
//        self.tabBar.unselectedItemTintColor = UIColor(red: 0/255.0, green: 256/255.0, blue: 0/255.0, alpha: 1)
//        self.tabBar.barTintColor = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1)
        self.selectedIndex = 3
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController is MenuVC {
            let vc = storyboard?.instantiateViewController(withIdentifier: "MenuVC") as! MenuVC
            vc.modalPresentationStyle = .overCurrentContext
            vc.view.alpha = 0.0
            self.present(vc, animated: false, completion: {
                UIView.animate(withDuration: 1.0) {
                    vc.view.alpha = 1.0
                }
            })
            return false
        }
        return true
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let appearance = self.tabBar.standardAppearance
        self.tabBar.tintColor = Colors.color_yellow
        self.tabBar.selectedItem?.standardAppearance?.selectionIndicatorTintColor = Colors.color_yellow
        appearance.selectionIndicatorTintColor = Colors.color_yellow
        appearance.stackedLayoutAppearance.normal.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: 0)
        tabBar.backgroundColor = Colors.color_white
        tabBar.standardAppearance = appearance
  
    }
  
//    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
//        if self.selectedIndex == 0 {
//            print("0")
//        }
//        else if self.selectedIndex == 1 {
//            print("1")
//        }
//        else if self.selectedIndex == 2 {
//            print("2")
//        }
//
//    }
    
//    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
//
//        if viewController is CollectionViewVC {
//            self.showToast(message: "CollectionView", font: .systemFont(ofSize: 12))
//        } else if viewController is ViewController {
//            self.showToast(message: "TableView", font: .systemFont(ofSize: 12))
//        } else if viewController is SegmentedViewVC {
//            self.showToast(message: "SegmentedView", font: .systemFont(ofSize: 12))
//        } else if viewController is OtherContolsVC {
//            self.showToast(message: "MixedViews", font: .systemFont(ofSize: 12))
//        } else if viewController is ApiTestVC {
//            self.showToast(message: "Api Testing", font: .systemFont(ofSize: 12))
//        }
//        else if viewController is MenuVC {
//            let vc = storyboard?.instantiateViewController(withIdentifier: "MenuVC") as! MenuVC
//            vc.modalPresentationStyle = .overCurrentContext
//            vc.view.alpha = 0.0
//            self.present(vc, animated: false, completion: {
//                UIView.animate(withDuration: 1.0) {
//                    vc.view.alpha = 1.0
//                }
//            })
//
//        }
//    }
}
