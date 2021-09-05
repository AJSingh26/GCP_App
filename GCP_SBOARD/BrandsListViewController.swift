//
//  ViewController.swift
//  GCP_SBOARD
//
//  Created by urban on 3/7/21.
//

import UIKit

class BrandsListViewController: UITableViewController {

    @IBAction func goAwayCloth(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
        print("test")
    }
    
}


extension BrandsListViewController {
    static let brandsListCellIdentifier = "BrandsListCell"
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        for i in 0...Brand.testData.count-1 {
            if Brand.testData[i].isFavorited.wrappedValue {
                let mvElement = Brand.testData.remove(at: i);
                Brand.testData.insert(mvElement, at: 0)
            }
        }
        return Brand.testData.count
    };
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: Self.brandsListCellIdentifier, for: indexPath) as? BrandsListCell else {
                fatalError("Unable to dequeue BrandsCell")
            }
        //Should I make the white black+vice versa in dark mode???
        
        let brand = Brand.testData[indexPath.row]
        let image = brand.isFavorited.wrappedValue ? UIImage(systemName: "heart.fill") : UIImage(systemName: "heart")
        
        //let uRl = NSURL(string:brand.URL)
                
        //let attrName = NSAttributedString(string: brand.Name, attributes: [NSAttributedString.Key.foregroundColor: UIColor.black,NSAttributedString.Key.link: uRl as Any])
        
        cell.brandName.text = brand.Name
        cell.brandDesc.text = brand.Description
        cell.brandClass.text = brand.Classification
        cell.brandPrice.text = brand.Price
        cell.brandImg.image = brand.logo
        cell.backgroundColor = indexPath.row%2==1 ? UIColor(red: 20/255, green:135/255, blue:53/255, alpha:1.0) : .clear
        cell.favButton.setBackgroundImage(image, for: .normal)
        cell.favButtonAction = {
                    print("favButtonAction")
            Brand.testData[indexPath.row].isFavorited.wrappedValue.toggle()
                tableView.reloadData()
            }
        cell.linkButtonAction = {
            print("linkButtonAction")
            UIApplication.shared.open( URL(string: brand.URL)!)
        }
        

            return cell
    
    }
}
