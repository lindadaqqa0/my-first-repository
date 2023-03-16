//
//  CollectionCell.swift
//  Tejari Mobile
//
//  Created by Linda D on 08/03/2023.
//

import Foundation
import UIKit


class CollectionCell : UICollectionViewCell {
      
    @IBOutlet weak var backgroundview: UIView!
    @IBOutlet weak var bankInfoLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var availableBalance: UILabel!
    
    func setup(service:Bank) {
        bankInfoLabel.text = service.bankInfoName
        moneyLabel.text = service.money
        availableBalance.text = service.availableBalance
        backgroundview.layer.cornerRadius = 20
    }
}
