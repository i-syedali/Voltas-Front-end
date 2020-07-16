//
//  ForgetPasswordVC.swift
//  Voltas
//
//  Created by Syed Ali on 7/5/18.
//  Copyright © 2018 Syed Ali. All rights reserved.
//

import UIKit

class ForgetPasswordVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.Prop()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var btnOk: UIButton!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func Prop() {
        
        btnOk.backgroundColor = UIColor(red:0.97, green:0.44, blue:0.06, alpha:1.0)
        btnOk.layer.cornerRadius = 11
        // txtUser.layer.cornerRadius = 11
        //txtUser.layer.masksToBounds = true
        
        
        
    }
    @IBAction func btnOk(_ sender: Any) {
    }
    @IBAction func btnhome(_ sender: Any) {
    }
}
