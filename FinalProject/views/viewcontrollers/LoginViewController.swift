//
//  LoginViewController.swift
//  FinalProject
//
//  Created by Admin on 5/28/18.
//  Copyright © 2018 ITI. All rights reserved.
//

import UIKit
import Alamofire

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let networkobj:NetworkDAL = NetworkDAL.sharedInstance()
        
        let params:Parameters = [
            "email" : "shiekho1990@gmail.com",
            "password" : "123456"
        ]
        networkobj.processPostReq(withBaseUrl: .mainApi, andUrlSuffix: "auth/login", andParameters: params)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
