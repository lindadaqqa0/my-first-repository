//
//  ViewController.swift
//  Tejari Mobile
//
//  Created by Linda D on 05/03/2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkBox: UIButton!
    @IBOutlet weak var showPass: UIButton!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
        
    }
    
    func setupView() {
        mainView.layer.cornerRadius = 30
    }
    
    @IBAction func showPasswordButton(_ sender: UIButton) {
  
        
        let showpass = UIImage(named: "showPass")
        let unshowpass = UIImage(named: "eye")
        
        let image = sender.isSelected ? showpass : unshowpass
        showPass.setImage(image, for: .normal)
        passwordTextField.isSecureTextEntry = sender.isSelected
        sender.isSelected.toggle()
        
    }
    
    
    
  
    @IBAction func checkedBoxTapped(_ sender: UIButton) {
       
        
       
         let checkbox = UIImage(named: "checkbox")
                let uncheckbox = UIImage(named: "uncheckedbox")
                
                if sender.isSelected == true {
                    checkBox.setImage(checkbox, for: .normal)
                    sender.isSelected = false
                }else{
                    checkBox.setImage(uncheckbox, for: .normal)
                    sender.isSelected = true
                    
        
                }
        
        
            }
            
        
        
    
 
    
    @IBAction func forgetUsernameButton(_ sender: Any) {
    }
    
    
    @IBAction func loginButton(_ sender: Any) {
       
        let controller = storyboard?.instantiateViewController(withIdentifier: "HomeTabBar") as! UITabBarController
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true)
    }
    
    
    
    @IBAction func signUpButton(_ sender: Any) {
    }
    
    @IBAction func locationsButton(_ sender: Any) {
    }
    
    @IBAction func contactUsButton(_ sender: Any) {
    }
    
    
    
}
