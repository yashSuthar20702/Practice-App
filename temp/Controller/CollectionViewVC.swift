//
//  CollectionViewVC.swift
//  temp
//
//  Created by Thinkwik 27 on 05/06/23.
//

import UIKit
import SVProgressHUD

class CollectionViewVC: UIViewController {

    @IBOutlet weak var collectionViewDemo: UICollectionView!
    
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
    var data = Array(1...250).map(String.init)

    
    let refreshControl = UIRefreshControl()
    var arrcollectionItem = [ColorsList]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewDemo.delegate = self
        collectionViewDemo.dataSource = self
        refreshControl.attributedTitle = NSAttributedString(string: "")
        refreshControl.addTarget(self, action: #selector(self.refresh(_:)), for: .valueChanged)
        collectionViewDemo.addSubview(refreshControl)
    }
    
    @objc func refresh(_ sender: AnyObject) {
        self.collectionViewDemo.reloadData()
        refreshControl.endRefreshing()

    }
    

}
extension CollectionViewVC : UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(arrData.count)
        return arrData.count
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width - 10 )/2
        return CGSize(width: size, height: size)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: NewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewCell", for: indexPath) as! NewCell
        cell.layer.cornerRadius = 10
        cell.layer.borderWidth = 1
        cell.layer.borderColor = Colors.bg_cell.cgColor
        
        if let url = URL(string: arrData[indexPath.row]) {
            cell.imgColor.loadImage(url: url)
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Tapped")
        let vc = storyboard?.instantiateViewController(withIdentifier: "TestingVC") as! TestingVC
        
        vc.strURL = arrData[indexPath.row]
        vc.imgName = self.data[indexPath.row]
        
        UIView.animate(withDuration: 5) {
            self.present(vc, animated: true)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.backgroundColor = UIColor.clear
    }

    func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.backgroundColor = UIColor.systemGray5
    }
    
    func collectionView(_ collectionView: UICollectionView, contextMenuConfigurationForItemAt indexPath: IndexPath, point: CGPoint) -> UIContextMenuConfiguration? {

        let config = UIContextMenuConfiguration(identifier: indexPath as NSIndexPath, previewProvider: { () -> UIViewController? in
            let objImage = self.storyboard?.instantiateViewController(withIdentifier: "TestingVC") as! TestingVC
            objImage.strURL = self.arrData[indexPath.row]
            objImage.imgName = self.data[indexPath.row]
            return objImage

        }, actionProvider: nil)
        return config
    }
    
}
