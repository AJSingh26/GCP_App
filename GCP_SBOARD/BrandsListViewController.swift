//
//  ViewController.swift
//  GCP_SBOARD
//
//  Created by urban on 3/7/21.
//

import UIKit

class BrandsListViewController: UITableViewController {

}

extension BrandsListViewController {
    static let brandsListCellIdentifier = "BrandsListCell"
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Brand.testData.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: Self.brandsListCellIdentifier, for: indexPath) as? BrandsListCell else {
                fatalError("Unable to dequeue BrandsCell")
            }
        let brand = Brand.testData[indexPath.row]
        let image = brand.isFavorite ? UIImage(systemName: "heart.fill") : UIImage(systemName: "heart")
        cell.brandName.text = brand.Name
        cell.brandDesc.text = brand.Description
        cell.backgroundColor = indexPath.row%2==1 ? UIColor(red: 20/255, green:135/255, blue:53/255, alpha:1.0) : .white
        cell.favButton.setBackgroundImage(image, for: .normal)
        cell.favButtonAction = {
                    print("favButtonAction")
                    Brand.testData[indexPath.row].isFavorite.toggle()
                    tableView.reloadRows(at: [indexPath], with: .none)
                }
        return cell
    
    }
}
