//
//  RegisterViewController.swift
//  VinHomes
//
//  Created by Chu Du on 20/06/2021.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var hotlineLabel: UILabel!
    @IBOutlet weak var phoneHotlineLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = #colorLiteral(red: 0.9802959561, green: 0.9804595113, blue: 0.98027426, alpha: 1)
        
        backButton.setImage(UIImage(systemName: "arrow.backward"), for: .normal)
        backButton.tintColor = #colorLiteral(red: 0.009532555938, green: 0.590103209, blue: 0.5330303907, alpha: 1)
        backButton.setTitle("", for: .normal)
        
        logoImage.image = UIImage(named: "logo")
        
        nameTextField.placeholder = "Họ & tên"
        nameTextField.textColor = .black
        phoneTextField.placeholder = "Số điện thoại"
        phoneTextField.textColor = .black
        phoneTextField.keyboardType = .phonePad
        passwordTextField.placeholder = "Mật khẩu"
        passwordTextField.textColor = .black
        passwordTextField.isSecureTextEntry = true
        
        registerButton.setTitle("Đăng ký", for: .normal)
        registerButton.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        registerButton.setTitleColor(.white, for: .normal)
        registerButton.backgroundColor = #colorLiteral(red: 0.009532555938, green: 0.590103209, blue: 0.5330303907, alpha: 1)
        registerButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        registerButton.layer.shadowOffset = CGSize(width: 5, height: 5)
        registerButton.layer.opacity = 1
        registerButton.layer.shadowRadius = 10
        registerButton.layer.masksToBounds = false
        registerButton.layer.cornerRadius = 4
        
        hotlineLabel.text = "HotLine:"
        hotlineLabel.font = UIFont.systemFont(ofSize: 17)
        hotlineLabel.textColor = .black
        hotlineLabel.textAlignment = .center
        
        phoneHotlineLabel.text = "1800.1186"
        phoneHotlineLabel.font = UIFont.systemFont(ofSize: 17)
        phoneHotlineLabel.textColor = #colorLiteral(red: 0.009532555938, green: 0.590103209, blue: 0.5330303907, alpha: 1)
        phoneHotlineLabel.textAlignment = .center
    }

    @IBAction func onPressBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onPressRegister(_ sender: Any) {
        let mainScreenVC = MainScreenViewController()
        
//        guard let name = nameTextField.text, let phone = phoneTextField.text else {
//            return
//        }
        
//        mainScreenVC.data = (name, phone)
        
        mainScreenVC.modalPresentationStyle = .fullScreen
        
        self.present(mainScreenVC, animated: true, completion: nil)
        
    }
}
