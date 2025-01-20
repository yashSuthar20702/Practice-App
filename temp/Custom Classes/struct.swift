//
//  struct.swift
//  temp
//
//  Created by Thinkwik 27 on 05/06/23.
//

import Foundation


struct ColorsList: Codable{
    
    var colorName : String?
    var colorImage : String?
}

struct DogStruct : Codable {
    
    var DogName : String?
    
    static func setUrls(urls: [String]) -> [DogStruct] {
        var dogName: [DogStruct] = [DogStruct]()
        for url in urls {
            dogName.append(.init(DogName: url))
        }
        return dogName
    }
}

struct TableMenu {
    var menuItemName: String?
}

