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
        lblCreate()
    }
    
    func lblCreate() {
        // basic Setup
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 200, height: 100)
        label.text = "Hello Swift \n Hello Developer"
        label.numberOfLines = 2
        self.view.addSubview(label)
        
        //Allignment
        label.center = self.view.center
        label.textAlignment = .center
        
        // background
        label.backgroundColor = UIColor.red
        label.textColor = UIColor.white
        
    }


}
