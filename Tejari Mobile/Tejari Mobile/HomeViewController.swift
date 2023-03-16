//
//  HomeViewController.swift
//  Tejari Mobile
//
//  Created by Linda D on 06/03/2023.
//

import UIKit

public struct info {
    let title : String
}


class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    
    let personal: [info] = [
        info(title: "Accounts"),
        info(title: "Loans"),
        info(title: "Cards")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view()
       
        
    }
    
   
   
    func view() {
       tableView.layer.cornerRadius = 30
    }
    
   

}

extension HomeViewController: UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personal.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell
        cell?.setup(personal: personal[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
}
