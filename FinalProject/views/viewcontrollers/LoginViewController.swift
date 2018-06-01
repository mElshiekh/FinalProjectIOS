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
    
    var lp:LoginPresenter!
    
    @IBOutlet weak var passTxt: UITextField!
    @IBOutlet weak var wrongEmail: UILabel!
    
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var invalidCredTxt: UILabel!
    
    @IBAction func loginBut(_ sender: Any) {
        if (emailTxt.text?.matches(String((String.regexes.email).rawValue)))! {
            wrongEmail.text=""
            lp.login(withUserName: emailTxt.text!, andPassword: passTxt.text!)
        }
        else{
            wrongEmail.text = "Invalid E-mail"
        }
    }

    @IBAction func forgotPass(_ sender: Any) {
        
    }
    @IBAction func registerBut(_ sender: Any) {
        let shawarbystory = UIStoryboard(name: "Main", bundle: nil)
        let signup = shawarbystory.instantiateViewController(withIdentifier: "signup")
        self.present(signup, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wrongEmail.text=""
        invalidCredTxt.text=""
        
        lp = LoginPresenter(withController: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func ChangeLabel(withString str:String){
        invalidCredTxt.text = str
    }
    func goToScreen(withScreenName name:String){
        
        
    }

}
