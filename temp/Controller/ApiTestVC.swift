//
//  ApiTestVC.swift
//  temp
//
//  Created by Thinkwik 27 on 06/06/23.
//

import UIKit

class ApiTestVC: UIViewController {
    
    @IBOutlet weak var txtApiTest: UITextField!
    @IBOutlet weak var btnApiDone: UIButton!
    @IBOutlet weak var imgDemo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUI()
        self.hideKeyboardTappedAround()
        
    }
    
    func setUI() {
        self.txtApiTest.layer.cornerRadius = 20
        self.txtApiTest.layer.borderWidth = 1
        self.txtApiTest.layer.borderColor = Colors.color_black.cgColor
        self.txtApiTest.setLeftPaddingPoints(10)
        self.btnApiDone.layer.cornerRadius = 20
        self.btnApiDone.dropShadow(scale: true)
        self.imgDemo.layer.cornerRadius = 10
    }
    
    @IBAction func btnDoneApiTapped(_ sender: Any) {
        if isValidData() {
            self.showToast(message: "VALID", font: .systemFont(ofSize: 12))
//             let url = URL(string: txtApiTest.text ?? "INVALID_URL")!
//          downloadImage(from: url)
            let imageUrl = URL(string: txtApiTest.text ?? "INVALID_URL")!
            if let cachedImage = loadCachedImage(from: imageUrl) {
                imgDemo.image = cachedImage
            } else {
                cacheImage(from: imageUrl) { (image) in
                    DispatchQueue.main.async {
                        if let image = image {
                            self.imgDemo.image = image
                        } else {
                            self.showToast(message: "IMAGE NOT FOUND", font: .systemFont(ofSize: 12))
                        }
                    }
                }
            }
            
        }
    }
    
    func isValidData()-> Bool {
        
        guard (txtApiTest.text?.isValidURL)! else {
            self.showToast(message: "INVALID", font: .systemFont(ofSize: 12))
            return false
        }
        return true
    }
    
    func cacheImage(from url: URL, completion: @escaping (UIImage?) -> Void) {
        let task = URLSession.shared.dataTask(with: url) { [self] (data, _, error) in
            guard let data = data, error == nil else {
                print("Failed to download image: \(error?.localizedDescription ?? "")")
                completion(nil)
                return
            }
            guard let image = UIImage(data: data) else {
                print("Failed to create image from data")
                completion(nil)
                return
            }
            // Cache the image
            self.imageInCache(image, for: url)
            completion(image)
            debugPrint("image in memory \(image)")
        }
        
        task.resume()
    }
    
    func imageInCache(_ image: UIImage, for url: URL) {
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let fileURL = documentsDirectory.appendingPathComponent(url.lastPathComponent)
        print("File URL : \(fileURL)")
        
        if let data = image.jpegData(compressionQuality: 1.0) {
            try? data.write(to: fileURL)
        }
    }
    
    func loadCachedImage(from url: URL) -> UIImage? {
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let fileURL = documentsDirectory.appendingPathComponent(url.lastPathComponent)
        
        if let data = try? Data(contentsOf: fileURL) {
            print("Loading from cache...")
            print("Document Directory : \(documentsDirectory)")
            print("Image Location : \(fileURL)")
            return UIImage(data: data)
        }
        
        return nil
    }
    
}
