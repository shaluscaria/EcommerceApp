//
//  SignUpVC.swift
//  EcommerceApp
//
//  Created by Shalu Scaria on 2017-03-17.
//  Copyright © 2017 Shalu Scaria. All rights reserved.
//

import UIKit


var global_array_User_Class = [Users]()
var global_signedin_obj_Users = Users()

class SignUpVC: UIViewController {
    
    
    
    //var array_User_Class = [Users]()
    //var signup_obj_Users = Users()
    
    @IBOutlet weak var signup_text_name: UITextField!
    
    @IBOutlet weak var signup_text_phonenumber: UITextField!
    @IBOutlet weak var signup_text_password: UITextField!
    @IBOutlet weak var signup_text_email: UITextField!
    
    
    
    
    
    @IBAction func onButtonClickCreateAccount(_ sender: UIButton) {
        
        
        let name = signup_text_name.text
        let email = signup_text_email.text
        let pass_word = signup_text_password.text
        let phonenumber = signup_text_phonenumber.text
        
        
        if name == "" ||  email == "" || pass_word == "" || phonenumber == "" {
            let alertNameEmpty = UIAlertController(title: "Error", message: "Fields can't be empty", preferredStyle: .alert)
            let alertNameEmptyBtn = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertNameEmpty.addAction(alertNameEmptyBtn)
            self.present(alertNameEmpty, animated: true, completion: nil)
        }
        
        if (name?.characters.count)! < 5 {
            let alertNameLessCharacter = UIAlertController(title: "Invalid", message: "Username must be greater than 5 characters", preferredStyle: .alert)
            let alertNameLessCharacterBtn = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertNameLessCharacter.addAction(alertNameLessCharacterBtn)
            self.present(alertNameLessCharacter, animated: true, completion: nil)
            
        }
        
        if (email?.characters.count)! < 8 {
            let alertEmailLessCharacter = UIAlertController(title: "Invalid", message: "Please enter a valid email address", preferredStyle: .alert)
            let alertEmailLessCharacterBtn = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertEmailLessCharacter.addAction(alertEmailLessCharacterBtn)
            self.present(alertEmailLessCharacter, animated: true, completion: nil)
            
        }
        
        else if (pass_word?.characters.count)! < 8 {
            let alertPasswordLessCharacter = UIAlertController(title: "Invalid", message: "Password must be greater than 8 characters", preferredStyle: .alert)
            let alertPasswordLessCharacterBtn = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertPasswordLessCharacter.addAction(alertPasswordLessCharacterBtn)
            self.present(alertPasswordLessCharacter, animated: true, completion: nil)
            
        }
        
        else if (phonenumber?.characters.count)! != 10 {
            let alertPhonenumberLessCharacter = UIAlertController(title: "Invalid", message: "Phone number must be 10 digits", preferredStyle: .alert)
            let alertPhonenumberLessCharacterBtn = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertPhonenumberLessCharacter.addAction(alertPhonenumberLessCharacterBtn)
            self.present(alertPhonenumberLessCharacter, animated: true, completion: nil)
            
        }

        else {
            
            global_signedin_obj_Users = Users(uname: name!, email: email!, pwd: pass_word!, phonenumber: phonenumber!)
            global_array_User_Class  = global_signedin_obj_Users.addUsers(array_Users: global_array_User_Class, obj_Users: global_signedin_obj_Users)
            
            self.performSegue(withIdentifier: "SignUpToRegistrationScreen", sender: SignUpVC())
            
        }
    }

    
 
    
    
    @IBAction func onButtonClickScreenSignIn(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "SignUpToSignInScreen", sender: SignUpVC())
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage:UIImage(named: "loginbgm_1500.jpg")!)

        // Do any additional setup after loading the view.
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
