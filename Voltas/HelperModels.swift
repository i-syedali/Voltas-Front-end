//
//  HelperModels.swift
//  Voltas
//
//  Created by Syed Ali on 7/20/18.
//  Copyright © 2018 Syed Ali. All rights reserved.
//

import Foundation

class CustomerInfo: Codable{
    var Address: String?
    var City_Id: String?
    var Contact: String?
}
class LoginInfo: Codable{
    var result: CustomerInfo?
    var status: String?
}

class Singleton{
    static var loginInfo: LoginInfo = {
       return LoginInfo()
    }()
}
