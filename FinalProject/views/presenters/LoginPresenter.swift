//
//  LoginPresenter.swift
//  FinalProject
//
//  Created by Admin on 5/31/18.
//  Copyright © 2018 ITI. All rights reserved.
//

import Foundation

class LoginPresenter{
    var lvc:LoginViewController
    var lm: LoginModel!
    init(withController c:LoginViewController) {
        lvc = c
    }
    
    func login(withUserName name:String,andPassword pass:String){
        
        lm = LoginModel(withPresenter: self)
        lm.loginURLPost(withUserName: name, andPassWord: pass,onSuccess: loginResponse(_:))
        
    }
    func parseJson(_ dict:Dictionary<String,Any>) {
        
    }
    func loginResponse(_ dict:Any) ->Void{
        var jsonDict:Dictionary<String,Any> = dict as! Dictionary<String,Any>
        if (jsonDict["auth_token"] != nil) {
            print("ay kalam")
            
        }
        else{
            lvc.ChangeLabel(withString: "Invalid name or password")
        }
    }
    
}
