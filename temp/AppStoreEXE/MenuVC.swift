//
//  MenuVC.swift
//  temp
//
//  Created by Thinkwik 27 on 11/07/23.
//

import UIKit

class MenuVC: UIViewController {
    var menu = [TableMenu]()
    
    @IBOutlet weak var viewMain: UIView! {
        didSet {
            self.viewMain.layer.cornerRadius = 4
        }
    }
    @IBOutlet weak var viewBGColor: UIView!{
        didSet{
            self.viewBGColor.addTapGesture {
                guard let presentingVC = self.presentingViewController else { return }
                UIView.animate(withDuration: 0.0, animations: {
                    self.view.alpha = 0
                }) { (finished) in
                    presentingVC.dismiss(animated: false, completion: nil)
                }
            }
        }
    }
    @IBOutlet weak var tblMenu: UITableView!
    @IBOutlet weak var tblMenuHeight: NSLayoutConstraint!
    
    //MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadXib()
        self.menuData()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        super.updateViewConstraints()
        print("tbl A : \(tblMenu.frame.height)")
        self.tblMenuHeight.constant = self.tblMenu.contentSize.height
        self.tblMenu.layoutIfNeeded()
        print("tbl B : \(tblMenu.frame.height)")
        print("A : \(viewMain.frame.height)")
        self.viewMain.frame.size.height = self.tblMenu.contentSize.height + 102
        self.viewMain.layoutIfNeeded()
        print("B : \(viewMain.frame.height)")


    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.hideNavigationBar()
    }
    
    //MARK: - XIB
    
    func loadXib() {
        self.tblMenu.register(nibName: "MenuTVCell")
        self.tblMenu.delegate = self
        self.tblMenu.dataSource = self
        self.tblMenu.separatorStyle = .none
        self.tblMenu.isScrollEnabled = false
        self.viewMain.frame = CGRect(x: 0, y: 0, width: viewMain.frame.width, height: tblMenu.contentSize.height)
    }
    
    //MARK: - Data(Dummy)
    
    func menuData() {
        let menu1 = TableMenu.init(menuItemName: "SUGGEST A TITLE")
        let menu2 = TableMenu.init(menuItemName: "QUICK TIPS")
        let menu3 = TableMenu.init(menuItemName: "HELP CENTER")
        let menu4 = TableMenu.init(menuItemName: "GIFT SUBSCRIPTIONS")
        let menu5 = TableMenu.init(menuItemName: "MERCH")
        let menu6 = TableMenu.init(menuItemName: "CONTACT US")
        let menu7 = TableMenu.init(menuItemName: "ABOUT US")
        let menu8 = TableMenu.init(menuItemName: "YOUR ACCOUNT")
        let menu9 = TableMenu.init(menuItemName: "LOG OUT")
        self.menu.append(menu1)
        self.menu.append(menu2)
        self.menu.append(menu3)
        self.menu.append(menu4)
        self.menu.append(menu5)
        self.menu.append(menu6)
        self.menu.append(menu7)
        self.menu.append(menu8)
        self.menu.append(menu9)
     }

}

//MARK: - Tableview Delegate And Datasource

extension MenuVC: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuTVCell") as! MenuTVCell
        cell.setMenuData(menuName: menu[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Tapped")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

}
