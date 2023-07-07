//
//  ForgotViewController.swift
//  Task1
//
//  Created by Indah Nurindo on 07/07/2566 BE.
//

import UIKit

class ForgotViewController: UIViewController {

    @IBOutlet weak var viewIsi: UIView! {
        didSet {
            viewIsi.roundCorners(corners: [.topLeft, .topRight], radius: 30)
        }
    }
    @IBOutlet weak var repeatPasswordText: UITextField!
    @IBOutlet weak var ktpText: UITextField!
    @IBOutlet weak var resetBtn: UIButton! {
        didSet {
            resetBtn.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        repeatPasswordText.addTarget(self, action: #selector(cekField), for: .editingChanged)
        passwordText.addTarget(self, action: #selector(cekField), for: .editingChanged)
        ktpText.addTarget(self, action: #selector(cekField), for: .editingChanged)

       
    }
    @objc func cekField() {
        if ktpText.text == "" || passwordText.text == "" || repeatPasswordText.text == "" {
            resetBtn.isEnabled = false
        } else {
            resetBtn.isEnabled = true
            resetBtn.backgroundColor = UIColor.orange
        }
        
    }
    

    @IBAction func resetactionBtn(_ sender: UIButton) {
        if passwordText.text == repeatPasswordText.text {
            let loginVC = self.storyboard?.instantiateViewController(identifier: "LoginViewController") as! LoginViewController
            loginVC.navigationItem.hidesBackButton = true
            self.navigationController?.pushViewController(loginVC, animated: true)
        } else {
            self.present(Alert.createAlertController(title: "Alert", message: "Password tidak match repeatPassword"), animated: true)
        }
    }
    
    @IBAction func loginActionBtn(_ sender: UIButton) {
        let homeVC = self.storyboard?.instantiateViewController(identifier: "LoginViewController") as! LoginViewController
        homeVC.navigationItem.hidesBackButton = true
        self.navigationController?.pushViewController(homeVC, animated: true)
    }
}
