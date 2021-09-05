//
//  BrandsListCell.swift
//  GCP_SBOARD
//
//  Created by Theo Urban on 8/10/21.
//

import UIKit

class BrandsListCell: UITableViewCell {
    typealias FavButtonAction = () -> Void
    
    @IBOutlet var brandName: UILabel!
    @IBOutlet var brandDesc: UILabel!
    @IBOutlet var favButton: UIButton!
    @IBOutlet var brandClass: UILabel!
    @IBOutlet var brandPrice: UILabel!
    @IBOutlet var brandImg: UIImageView!
    /*@IBAction func urlOpen( sender:UITableViewCell){
        UIApplication.shared.open( URL(string: "www.google.com")!)
    }*/
    
    
    var favButtonAction: FavButtonAction?
    
    @IBAction func favButtonTriggered(_ sender: UIButton) {
            favButtonAction?()
        }
}
