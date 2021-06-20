//
//  ViewController.swift
//  VinHomes
//
//  Created by Apple on 20/06/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var warningLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 3
        warningLabel.textColor = .white
        
    }

    @IBAction func loginOnPress(_ sender: Any) {
        guard let phone = phoneTextField.text, let password = passwordTextField.text else {
            warningLabel.text = "Số điện thoại & mật khẩu không hợp lệ"
            warningLabel.textColor = .red
            return
        }
       
        let mainScreenVC = MainScreenViewController()
        mainScreenVC.data.phone = Int(phone) ?? 0
        mainScreenVC.data.password = Int(password)
        self.present(mainScreenVC, animated: true, completion: nil)
        
    }
    
    @IBAction func registerOnPress(_ sender: Any) {
        let registerVC = RegisterViewController()
        self.present(registerVC, animated: true, completion: nil)
    }
    
}

