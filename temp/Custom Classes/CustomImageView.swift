//
//  CustomImageView.swift
//  temp
//
//  Created by Thinkwik 27 on 08/06/23.
//

import Foundation
import UIKit

class CustomImageView : UIImageView {
    
    var task: URLSessionDataTask!
    var imgCache = NSCache<AnyObject, AnyObject>()
    
    func loadImage(url : URL) {
        image = nil
        
        if let task = task {
            task.cancel() // One task at a moment
        }
        
        if let imageFromCache = imgCache.object(forKey: url.absoluteString as AnyObject) as? UIImage {
            self.image = imageFromCache
            print("CALLING FROM CACHE MEMORY : \(imageFromCache)")
            return
        }
        
         task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data , let newImage = UIImage(data: data) else {
                print("Couldn't find image in URL \(url)")
                return
            }
             
             self.imgCache.setObject(newImage, forKey: url.absoluteString as AnyObject)
             print(newImage)
             
            DispatchQueue.main.async {
                self.image = newImage
            }
        }
        task.resume()
    }
}
