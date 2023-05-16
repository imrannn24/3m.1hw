//
//  ViewController.swift
//  3m.1hw
//
//  Created by imran on 15.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var EmailTF: UITextField!

    @IBOutlet weak var PasswordTF: UITextField!
    
    
    @IBOutlet weak var ForgotPasswordLabel: UILabel!
    
    @IBOutlet weak var SignUpButton: UILabel!
    
    @IBOutlet weak var CheckMarkIMG: UIImageView!
    
    @IBAction func CheckBoxButton(_ sender: Any) {
        if CheckMarkIMG.alpha == 1{
            CheckMarkIMG.alpha = 0
        }else{
            CheckMarkIMG.alpha = 1
        }
    }
    
    @IBAction func SignInButton(_ sender: Any) {
        if EmailTF.text == ""{
            
            EmailTF.placeholder = "Заполните, пожалуйста"
            self.EmailTF.layer.borderWidth = 1
            self.EmailTF.layer.borderColor = UIColor.red.cgColor
        }
        if PasswordTF.text == ""{
            PasswordTF.placeholder = "Заполните, пожалуйста"
            self.PasswordTF.layer.borderWidth = 1
            self.PasswordTF.layer.borderColor = UIColor.red.cgColor
        }else{
            openMain()
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ForgotPasswordLabel.isUserInteractionEnabled = true
        ForgotPasswordLabel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(forgotPassword)))
        SignUpButton.isUserInteractionEnabled = true
        SignUpButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(signUp)))
        
    }

    func openMain(){
        let mainVc = storyboard?.instantiateViewController(withIdentifier: "main_vc")
        mainVc?.modalPresentationStyle = .fullScreen
        self.present(mainVc!, animated: true, completion: nil)
    }
    
    @objc func forgotPassword(){
        print("forgot password")
    }
    
    @objc func signUp(){
        print("sign up")
    }

}

