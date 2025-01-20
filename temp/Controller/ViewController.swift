//
//  ViewController.swift
//  temp
//
//  Created by Thinkwik 27 on 05/06/23.
//

import UIKit

class ViewController: UIViewController, UITabBarControllerDelegate {
    
    var arrColorList = [ColorsList]()
    var data = Array(1...250).map(String.init)
    var  arrData:[String] =  ["https://images.dog.ceo/breeds/hound-afghan/n02088094_1003.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_10263.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_10715.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_10822.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1128.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1145.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_115.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1150.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_11570.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_11584.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1186.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_11953.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1234.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1259.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_12664.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_12879.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_12945.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_13145.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_13270.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1335.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_13502.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1357.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1370.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_13879.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_13909.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1406.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1410.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1459.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1479.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1592.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1661.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1724.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_173.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1829.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1882.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1932.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_2062.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_2173.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_2458.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_251.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_2545.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_2626.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_2700.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_272.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_2738.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_2798.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_2803.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_305.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3051.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3057.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3059.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3080.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3119.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3159.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3201.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3233.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3396.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3400.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3500.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3564.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_357.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3582.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3588.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3593.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3629.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3630.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3653.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3856.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3858.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_392.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3937.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3944.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3982.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4037.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4072.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4143.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4195.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4230.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4290.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4307.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4310.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4352.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4396.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4434.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4467.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4501.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4521.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4598.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_472.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4837.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_5080.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_515.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_5150.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_522.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_5381.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_5413.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_5436.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_5504.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_5927.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_60.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_6035.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_6241.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_6430.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_6485.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_649.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_6493.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_6690.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_688.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_7106.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_713.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_7146.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_7260.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_7683.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_7894.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_791.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_8063.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_8315.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_8465.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_890.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_907.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_908.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_913.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_980.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_986.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_988.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1003.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_10263.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_10715.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_10822.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1128.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1145.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_115.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1150.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_11570.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_11584.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1186.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_11953.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1234.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1259.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_12664.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_12879.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_12945.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_13145.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_13270.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1335.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_13502.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1357.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1370.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_13879.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_13909.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1406.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1410.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1459.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1479.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1592.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1661.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1724.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_173.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1829.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1882.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_1932.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_2062.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_2173.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_2458.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_251.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_2545.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_2626.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_2700.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_272.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_2738.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_2798.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_2803.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_305.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3051.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3057.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3059.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3080.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3119.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3159.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3201.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3233.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3396.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3400.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3500.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3564.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_357.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3582.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3588.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3593.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3629.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3630.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3653.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3856.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3858.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_392.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3937.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3944.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_3982.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4037.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4072.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4143.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4195.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4230.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4290.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4307.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4310.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4352.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4396.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4434.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4467.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4501.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4521.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4598.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_472.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_4837.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_5080.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_515.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_5150.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_522.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_5381.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_5413.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_5436.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_5504.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_5927.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_60.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_6035.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_6241.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_6430.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_6485.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_649.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_6493.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_6690.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_688.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_7106.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_713.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_7146.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_7260.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_7683.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_7894.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_791.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_8063.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_8315.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_8465.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_890.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_907.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_908.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_913.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_980.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_986.jpg",
                                "https://images.dog.ceo/breeds/hound-afghan/n02088094_988.jpg"
    ]
    var temp:[DogStruct] = DogStruct.setUrls(urls: arrdog)
    
    let refreshControl = UIRefreshControl()

    @IBOutlet weak var tblTableView: UITableView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.tblTableView.dataSource = self
        self.tblTableView.delegate = self
        self.loadXIB()
        refreshControl.attributedTitle = NSAttributedString(string: "")
        refreshControl.addTarget(self, action: #selector(self.refresh(_:)), for: .valueChanged)
        tblTableView.addSubview(refreshControl)
//        tblTableView.separatorStyle = .none
        self.tabBarController?.delegate = self

    }
    
    func loadXIB() {
        tblTableView.register(UINib(nibName: "TempTVC", bundle: nil), forCellReuseIdentifier: "TempTVC")
    }
    
    @objc func refresh(_ sender: AnyObject) {
        self.tblTableView.reloadData()
        refreshControl.endRefreshing()

    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {

        let tabBarIndex = tabBarController.selectedIndex
        if tabBarIndex == 1 {
            self.tblTableView.setContentOffset(CGPoint.zero, animated: true)
        }
    }
    

}
extension ViewController: UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(temp.count) //250
        return temp.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TempTVC") as! TempTVC
//        cell.setColorData(color: arrColorList[indexPath.row])
        cell.lblName.text = data[indexPath.row]
        if let url = URL(string: arrData[indexPath.row]) {
            cell.imgColor.loadImage(url: url)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Tapped")
    }
    
    func tableView(_ tableView: UITableView, contextMenuConfigurationForRowAt indexPath: IndexPath, point: CGPoint) -> UIContextMenuConfiguration? {
        let config = UIContextMenuConfiguration(identifier: indexPath as NSIndexPath, previewProvider: { () -> UIViewController? in
            let objImage = self.storyboard?.instantiateViewController(withIdentifier: "TestingVC") as! TestingVC
            objImage.strURL = self.arrData[indexPath.row]
            objImage.imgName = self.data[indexPath.row]
            objImage.view.sizeThatFits(.init(width: 100, height: 100))
            return objImage

        }, actionProvider: nil)
        return config
    }

    
    
}

