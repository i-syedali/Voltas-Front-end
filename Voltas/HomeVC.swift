//
//  HomeVC.swift
//  Voltas
//
//  Created by Syed Ali on 7/2/18.
//  Copyright © 2018 Syed Ali. All rights reserved.
//

import UIKit
import Alamofire

class HomeVC: UIViewController,UITextFieldDelegate {
    
    
    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnFbLogin: UIButton!
    @IBOutlet weak var txtPassword: UITextField!
    
    
    
    

    override func viewDidLoad() {
        
//        Alamofire.request("https://voltasinc.us/API/restapi/CustomerAPI/GetAllCategories").responseJSON { response in
//            print(response)
//        }
//        let parameters: Parameters = ["Email": "Haroon6138@gmail.com","CustomerPassword":"123456"]
//
//        // All three of these calls are equivalent
//        Alamofire.request("https://voltasinc.us/API/restapi/CustomerAPI/Customerlogin",  method: .post, parameters: parameters).responseJSON { response in
//                        print(response)
//                    }
        
        
        
//        let url = URL(string: "https://voltasinc.us/API/restapi/CustomerAPI/GetAllCategories")!
//
//        //        func httpPost(jsonData: Data) {
//        //            if !jsonData.isEmpty {
//
//        var request = URLRequest(url: url)
//        request.httpMethod = "GET"
//        //                let paramToSend = "Email=Haroon6138@gmail.com&CustomerPassword=123456"
//
//        //                request.httpBody = paramToSend.data(using: String.Encoding.utf8)
//
//        //                request.httpBody = jsonData
//
//        URLSession.shared.getAllTasks { (openTasks: [URLSessionTask]) in
//            NSLog("open tasks: \(openTasks)")
//        }
//
//        let task = URLSession.shared.dataTask(with: request, completionHandler: { (responseData: Data?, response: URLResponse?, error: Error?) in
//            NSLog("\(responseData)")
//            NSLog("\(response)")
//        })
//        task.resume()
        
        
        
        
        
      //setenv("CFNETWORK_DIAGNOSTICS", "3", 1);
        
  
        
        super.viewDidLoad()
        
        self.Prop()

        // Do any additional setup after loading the view.
    }

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func validateEmail(enteredEmail:String) -> Bool {
        
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: enteredEmail)
        
    }

  

    //Properties
    
    func Prop() {
        
        btnLogin.backgroundColor = UIColor(red:0.97, green:0.44, blue:0.06, alpha:1.0)
        btnFbLogin.backgroundColor = UIColor(red:0.21, green:0.30, blue:0.52, alpha:1.0)
        
        btnLogin.layer.cornerRadius = 11
        btnFbLogin.layer.cornerRadius = 11
        
        //txtUser.layer.cornerRadius = 11
        //txtUser.layer.masksToBounds = true
        
       // txtPassword.layer.cornerRadius = 11
        //txtPassword.layer.masksToBounds = true
        
    }
    
    @IBAction func btnLoginFunc(_ sender: Any) {
        print("Cehck")
        
        let username:String = txtUser.text!
        let password:String = txtPassword.text!
//        let text: String = nam.text!
        let parameters: Parameters = ["Email": username,"CustomerPassword":password]
        print(username)
        print(password)
        print(parameters)
    
        if validateEmail(enteredEmail: username){
            
            // All three of these calls are equivalent
            Alamofire.request("https://voltasinc.us/API/restapi/CustomerAPI/Customerlogin",  method: .post, parameters: parameters).responseJSON { response in
                let dict = response.value as! [String: Any]
               // let resulDict = dict["result"] as! [String: Any]
               // print(resulDict["Contact"] as! String)
                print(response)
                
                do{

                    let object = try JSONDecoder().decode(LoginInfo.self, from: response.data!)
                    print(object.result?.Contact)
                    Singleton.loginInfo = object
                    
                    
                    
                }
                catch{
                    print(error.localizedDescription)
                }
   }
        
  }
    
 }
        
}
    


        
      

    

