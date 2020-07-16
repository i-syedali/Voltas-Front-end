//
//  SignupVC.swift
//  Voltas
//
//  Created by Syed Ali on 7/2/18.
//  Copyright © 2018 Syed Ali. All rights reserved.
//

import UIKit

class SignupVC: UIViewController {

    @IBOutlet weak var btnRegister: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.Prop()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func Prop() {
        
        btnRegister.backgroundColor = UIColor(red:0.97, green:0.44, blue:0.06, alpha:1.0)
        btnRegister.layer.cornerRadius = 11
      
       // txtUser.layer.cornerRadius = 11
        //txtUser.layer.masksToBounds = true
        

        
    }

    @IBAction func btnHome(_ sender: Any) {
    }
}
