//
//  NewViewController.swift
//  SwiftRev
//
//  Created by sayed mansour on 09/12/2024.
//

import UIKit

class NewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        buttonCreate()
    }
    
    func buttonCreate() {
        // set UP
        let button = UIButton()
        button.frame = CGRect(x: 90, y: 600, width: 200, height: 50)
        button.setTitle("Sign in ", for: .normal)
        self.view.addSubview(button)
        button.center = self.view.center
        //background
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 25
        //action
        button.addTarget(self, action: #selector(signButtonTapped), for: .touchUpInside)
        
    }
    @objc func signButtonTapped() {
        createTextFieldAlert()
        
    }
    
  //MARK: -  TextField Alert
    
    
    func createTextFieldAlert() {
        let alert = UIAlertController(title: "Sign in with your Google Accounr", message: "Please sign in to continue", preferredStyle: .alert)
        // Email
        alert.addTextField { text in
            text.placeholder = "Enter Your Email"
            text.keyboardType = .emailAddress
            text.returnKeyType = .next
        }
        // password
        alert.addTextField { text in
            text.placeholder = "Enter Your Password"
            text.returnKeyType = .continue
            text.isSecureTextEntry = true
        }
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Continue", style: .default, handler: { action in
                //Read Text Fields
            guard let fields = alert.textFields , fields.count == 2 else {return}
            
            let emailField = fields[0]
            let passwordField = fields[1]
            guard let email = emailField.text , !email.isEmpty
                    , let pass = passwordField.text , !pass.isEmpty else{
                let alert2 = UIAlertController(title: "sorry", message: "Invalid input", preferredStyle: .alert)
                alert2.addAction(UIAlertAction(title: "Try Again", style: .default, handler: nil))
                self.present(alert2, animated: true, completion: nil)
                print("Invalid Inpute")
                return
            }
            print("Email is \(email)")
            print("Password is \(pass)")

            
        }))
        
        present(alert, animated: true, completion: nil)
    }

}
