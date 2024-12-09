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
        button.setTitle("Save", for: .normal)
        self.view.addSubview(button)
        //background
        button.backgroundColor = .green
        button.layer.cornerRadius = 25
        //action
        button.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
        
    }

    @objc func saveButtonTapped() {
        self.view.backgroundColor = .blue
        print("welcome To X-Code")
        
    }
    
}
