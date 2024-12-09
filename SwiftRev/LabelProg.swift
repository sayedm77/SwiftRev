//
//  LabelProg.swift
//  SwiftRev
//
//  Created by sayed mansour on 08/12/2024.
//

import UIKit

class LabelProg: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        lblCreate()
        buttonCreate()
        
    }
    
//    func lblCreate() {
//        // basic Setup
//        let label = UILabel()
//        label.frame = CGRect(x: 0, y: 0, width: 200, height: 100)
//        label.text = "Hello Swift \n Hello Developer"
//        label.numberOfLines = 2
//        self.view.addSubview(label)
//        
//        //Allignment
//        label.center = self.view.center
//        label.textAlignment = .center
//        
//        // background
//        label.backgroundColor = UIColor.red
//        label.textColor = UIColor.white
//        
//    }

    func buttonCreate() {
        // set UP
        let button = UIButton()
        button.frame = CGRect(x: 90, y: 600, width: 200, height: 50)
        button.setTitle("show alert ", for: .normal)
        self.view.addSubview(button)
        button.center = self.view.center
        //background
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 25
        //action
        button.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
        
    }

    @objc func saveButtonTapped() {
//        self.view.backgroundColor = .blue
//        print("welcome To X-Code")
//        createSimpleAlert()
        createActionSheetAlert()
        
    }
    
    // MARK: -   creete alert (simple , action Sheet)
    
   
    
    func createSimpleAlert() {
        let alert = UIAlertController(title: "Heeey", message: "do you want to change the background", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "No", style: .default, handler: { action in
            print("No Button Tapped")
            self.view.backgroundColor = .systemBackground
        }))
        alert.addAction(UIAlertAction(title: "yes", style: .default, handler: { action in
            print("yes,Button Tapped")
            self.view.backgroundColor = .gray
        }))
        present(alert, animated: true, completion: nil)
        
    }
    
    func createActionSheetAlert() {
        let alert = UIAlertController(title: "Heeey", message: "do you want to change the background", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "No", style: .default, handler: { action in
            print("No Button Tapped")
            self.view.backgroundColor = .systemBackground
        }))
        alert.addAction(UIAlertAction(title: "yes", style: .default, handler: { action in
            print("yes,Button Tapped")
            self.view.backgroundColor = .darkGray
        }))
        present(alert, animated: true, completion: nil)
        
    }
    
}
