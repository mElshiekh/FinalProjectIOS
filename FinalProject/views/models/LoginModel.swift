//
//  LoginModel.swift
//  FinalProject
//
//  Created by Admin on 5/31/18.
//  Copyright © 2018 ITI. All rights reserved.
//

import Foundation

class LoginModel{
    var lp:LoginPresenter
    
    init(withPresenter p:LoginPresenter) {
        lp=p
    }
    
    func loginURLPost(withUserName name:String, andPassWord pass:String,onSuccess: @escaping (_ :Any)->Void){
        let networkObj:NetworkDAL = NetworkDAL.sharedInstance()
        let params = [
            "email" : name ,
            "password" : pass]
        networkObj.processPostReq(withBaseUrl: .mainApi, andUrlSuffix: "auth/login", andParameters: params, onSuccess: onSuccess)
        
    }
    
}
