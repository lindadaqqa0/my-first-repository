//
//  HomeTabBarViewController.swift
//  Tejari Mobile
//
//  Created by Linda D on 12/03/2023.
//

import UIKit

class HomeTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabbarItem()
        setupView()
    }
    
    
    func setupTabbarItem() {
        let billPayment = BillPayment()
        let transfers = Transfers()
        let dashBoard = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        let cliq = CliQ()
        let cards = Cards()

        billPayment.title = "Bill Payment"
        transfers.title = "Transfers"
        dashBoard.title = "Dashboard"
        cliq.title = "CliQ"
        cards.title = "Cards"
        
        self.setViewControllers([billPayment,transfers,dashBoard,cliq,cards], animated: false)
        
        guard let items = self.tabBar.items else { return }
        
        let images = ["BillPayment", "Transfers", "dashboard" , "cliq" , "cards"]
        
        items.enumerated().forEach{ index, items in
            items.image = UIImage(named: images[index])
            
        }
    }
    
    func setupView() {
        self.tabBar.tintColor = .darkGray
        tabBar.layer.cornerRadius = 20
        tabBar.backgroundColor = .white
    }
        
    
}

class BillPayment : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
}


class Transfers: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
}

class CliQ : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
    }
}
    
    class Cards : UIViewController {
        
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
        }
    }

