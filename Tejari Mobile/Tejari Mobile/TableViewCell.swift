//
//  TableViewCell.swift
//  Tejari Mobile
//
//  Created by Linda D on 08/03/2023.
//

import Foundation
import UIKit

public struct Bank {
    let bankInfoName : String
    let money : String
    let availableBalance : String
}


class TableViewCell : UITableViewCell {
    @IBOutlet var titleLabel : UILabel!
    
    let services: [Bank] = [
        Bank(bankInfoName: "Saving Account", money: "100,999.543 JOD", availableBalance: "Available Balance"),
        Bank(bankInfoName: "Car Loan", money: "534,538.543 JOD", availableBalance: "Total Balance"),
        Bank(bankInfoName: "Premium Card - 4123", money: "598,879.543 JOD", availableBalance: "Available Balance")
    ]
    
    
    func setup(personal:info) {
        titleLabel.text = personal.title
        
        
    }
    
}


extension TableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as? CollectionCell
        cell? .setup(service: services[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
    
}
 
