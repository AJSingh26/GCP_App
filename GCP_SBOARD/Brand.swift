//
//  Brands.swift
//  GCP_SBOARD
//
//  Created by Theo Urban on 8/10/21.
//

import Foundation
import UIKit

struct Brand {
    internal init(Name: String, Description: String, Classification: String, URL: String, Price: String, logo: UIImage, isFavorite: Bool) {
        self.Name = Name
        self.Description = Description
        self.Classification = Classification
        self.URL = URL
        self.Price = Price
        self.logo = logo
        self.isFavorited = Storage(key: "\(Name).favorite", defaultValue: false)
    }
    
    var Name: String
    var Description: String
    var Classification: String
    var URL: String
    var Price: String
    var logo: UIImage
    var isFavorited: Storage<Bool>

}
extension Brand {
    static var testData = [
        Brand(Name: "aName", Description: "aDesc", Classification: "aClass", URL: "https://www.google.com",Price: "$", logo: UIImage(named: "EarthHero")!, isFavorite: false),
        Brand(Name: "bName", Description: "bDesc", Classification: "bClass", URL: "https://greenconsumerproject.org",Price: "$", logo: UIImage(named: "&collar")!, isFavorite: true),
        Brand(Name: "cName", Description: "cDesc", Classification: "cClass", URL: "www.google.com",Price: "$", logo: UIImage(named: "UnitedbyBlue")!, isFavorite: false),
        Brand(Name: "dName", Description: "dDesc", Classification: "dClass", URL: "www.google.com",Price: "$", logo: UIImage(named: "&collar")!, isFavorite: false),
        Brand(Name: "eName", Description: "eDesc", Classification: "eClass", URL: "www.google.com",Price: "$", logo: UIImage(named: "&collar")!, isFavorite: false)
    ]
}
