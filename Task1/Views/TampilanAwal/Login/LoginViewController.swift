//
//  LoginViewController.swift
//  Task1
//
//  Created by Indah Nurindo on 07/07/2566 BE.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var viewIsiTampil: UIView! {
        didSet {
            viewIsiTampil.roundCorners(corners: [.topLeft, .topRight], radius: 30)
        }
    }
    @IBOutlet weak var loginBtn: UIButton! {
        didSet {
            loginBtn.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var userNameTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTxt.isSecureTextEntry = true
        passwordTxt.addTarget(self, action: #selector(cekInput), for: .editingChanged)
        userNameTxt.addTarget(self, action: #selector(cekInput), for: .editingChanged)
        
    }
    @objc func cekInput () {
        if passwordTxt.text == "" || userNameTxt.text == "" {
            loginBtn.isEnabled = false
        } else {
            loginBtn.isEnabled = true
            loginBtn.backgroundColor = UIColor.orange
        }
    }
    

    @IBAction func loginActionBtn(_ sender: UIButton) {
        let utamaVC = self.storyboard?.instantiateViewController(identifier: "TabViewController") as! TabViewController
        utamaVC.navigationItem.hidesBackButton = true
        self.navigationController?.pushViewController(utamaVC, animated: true)
    }
    
    @IBAction func registerBtn(_ sender: UIButton) {
        let signUpVC = self.storyboard?.instantiateViewController(identifier: "SignUpViewController") as! SignUpViewController
        signUpVC.navigationItem.hidesBackButton = true
        self.navigationController?.pushViewController(signUpVC, animated: true)
    }
    @IBAction func forgotActionBtn(_ sender: UIButton) {
        let signUpVC = self.storyboard?.instantiateViewController(identifier: "ForgotViewController") as! ForgotViewController
        signUpVC.navigationItem.hidesBackButton = true
        self.navigationController?.pushViewController(signUpVC, animated: true)
    }
}
