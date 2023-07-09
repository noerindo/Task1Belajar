//
//  SignUpViewController.swift
//  Task1
//
//  Created by Indah Nurindo on 07/07/2566 BE.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var fullNameTxt: UITextField!
    
    @IBOutlet weak var isiView: UIView! {
        didSet {
            isiView.roundCorners(corners: [.topLeft, .topRight], radius: 30)
        }
    }
    @IBOutlet weak var registerBtn: UIButton! {
        didSet{
            registerBtn.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var repeatPasswordText: UITextField!
    @IBOutlet weak var paswwordTxt: UITextField!
    @IBOutlet weak var userNameText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerBtn.isEnabled = false
        repeatPasswordText.addTarget(self, action: #selector(cekField), for: .editingChanged)
        fullNameTxt.addTarget(self, action: #selector(cekField), for: .editingChanged)
        paswwordTxt.addTarget(self, action: #selector(cekField), for: .editingChanged)
        userNameText.addTarget(self, action: #selector(cekField), for: .editingChanged)
        paswwordTxt.isSecureTextEntry = true
        repeatPasswordText.isSecureTextEntry = true
        

        // Do any additional setup after loading the view.
    }
    @objc func cekField() {
        if userNameText.text == "" ||  fullNameTxt.text == "" || paswwordTxt.text == "" || repeatPasswordText.text == "" {
            registerBtn.isEnabled = false
            
        } else {
            registerBtn.isEnabled = true
            registerBtn.backgroundColor = UIColor.orange
        }
    
    }
    
    
    @IBAction func registerActioBtn(_ sender: Any) {
        if paswwordTxt.text == repeatPasswordText.text {
            let loginVC = self.storyboard?.instantiateViewController(identifier: "LoginViewController") as! LoginViewController
            loginVC.navigationItem.hidesBackButton = true
            self.navigationController?.pushViewController(loginVC, animated: true)
        } else {
            self.present(Alert.createAlertController(title: "Alert", message: "Password tidak match repeatPassword"), animated: true)
        }
    }
    
    
    @IBAction func loginActionBtn(_ sender: UIButton) {
        let loginVC = self.storyboard?.instantiateViewController(identifier: "LoginViewController") as! LoginViewController
        loginVC.navigationItem.hidesBackButton = true
        self.navigationController?.pushViewController(loginVC, animated: true)
    }
    
    

}
