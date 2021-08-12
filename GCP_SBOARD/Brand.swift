//
//  Brands.swift
//  GCP_SBOARD
//
//  Created by Theo Urban on 8/10/21.
//

import Foundation

struct Brand {
    var Name: String
    var Description: String
    var Classification: String
    var URL: String
    var isFavorite: Bool

}
extension Brand {
    static var testData = [
        Brand(Name: "aName", Description: "aDesc", Classification: "aClass", URL: "www.google.com", isFavorite: false),
        Brand(Name: "bName", Description: "bDesc", Classification: "bClass", URL: "www.google.com", isFavorite: true),
        Brand(Name: "cName", Description: "cDesc", Classification: "cClass", URL: "www.google.com", isFavorite: false),
        Brand(Name: "dName", Description: "dDesc", Classification: "dClass", URL: "www.google.com", isFavorite: false),
        Brand(Name: "eName", Description: "eDesc", Classification: "eClass", URL: "www.google.com", isFavorite: false)
    ]
}
