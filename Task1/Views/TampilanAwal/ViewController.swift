//
//  ViewController.swift
//  Task1
//
//  Created by Indah Nurindo on 07/07/2566 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnView: UIView! {
        didSet {
            btnView.roundCorners(corners: [.topLeft, .topRight], radius: 30)
        }
    }
    
    @IBOutlet weak var loginBtn: UIButton! {
        didSet {
            loginBtn.layer.cornerRadius = 10
        }
    }
    
    @IBOutlet weak var signInBtn: UIButton! {
        didSet {
            signInBtn.layer.cornerRadius = 10
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func skipBtn(_ sender: UIButton) {
    }
    
    
    @IBAction func loginActionBtn(_ sender: UIButton) {
        print("Woi")
        let loginVC = self.storyboard?.instantiateViewController(identifier: "LoginViewController") as! LoginViewController
        loginVC.navigationItem.hidesBackButton = true
        self.navigationController?.pushViewController(loginVC, animated: true)

    }
    
    @IBAction func signUpActionBtn(_ sender: UIButton) {
        print("Hai")
        let signUpVC = self.storyboard?.instantiateViewController(identifier: "SignUpViewController") as! SignUpViewController
        signUpVC.navigationItem.hidesBackButton = true
        self.navigationController?.pushViewController(signUpVC, animated: true)
    }
    
}




