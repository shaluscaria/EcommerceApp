//
//  FirstViewController.swift
//  EcommerceApp
//
//  Created by Shalu Scaria on 2017-03-16.
//  Copyright © 2017 Shalu Scaria. All rights reserved.
//

import UIKit

class MyProfileVC: UIViewController {

    //var myprofile_obj_Users = Users()
    
    
    @IBOutlet weak var myprofile_txt_name: UITextField!
    
    @IBOutlet weak var myprofile_txt_email: UITextField!
    
    
    @IBOutlet weak var myprofile_txt_password: UITextField!
    
    @IBOutlet weak var myprofile_txt_phone: UITextField!
    
    @IBOutlet weak var myprofile_lbl_welcome: UILabel!
    
    @IBOutlet weak var myprofile_btn_edit: UIButton!
    
    @IBOutlet weak var myprofile_btn_save: UIButton!
    @IBAction func onButtonClickEdit(_ sender: Any) {
        myprofile_txt_name.isEnabled = true
        myprofile_txt_email.isEnabled = true
        myprofile_txt_password.isEnabled = true
        myprofile_txt_phone.isEnabled = true
        
        //myprofile_btn_edit.text = "Save"
        myprofile_btn_edit.isEnabled = false
        myprofile_btn_save.isEnabled = true
        self.viewDidLoad()
    }
    
    
    @IBAction func onButtonClickSave(_ sender: UIButton) {
        
        global_signedin_obj_Users.user_Name = myprofile_txt_name.text!
        global_signedin_obj_Users.email_Id = myprofile_txt_email.text!
        global_signedin_obj_Users.password = myprofile_txt_password.text!
        global_signedin_obj_Users.phone_Number = myprofile_txt_phone.text!
        
        myprofile_txt_name.isEnabled = false
        myprofile_txt_email.isEnabled = false
        myprofile_txt_password.isEnabled = false
        myprofile_txt_phone.isEnabled = false
        myprofile_btn_save.isEnabled = false

        self.viewDidLoad()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myprofile_btn_save . isEnabled = false
        myprofile_txt_name.text = global_signedin_obj_Users.user_Name
        myprofile_txt_name.isEnabled = false
        myprofile_txt_email.text = global_signedin_obj_Users.email_Id
        myprofile_txt_email.isEnabled = false
        myprofile_txt_password.text = global_signedin_obj_Users.password
        myprofile_txt_password.isEnabled = false
        myprofile_txt_phone.text = global_signedin_obj_Users.phone_Number
        myprofile_txt_phone.isEnabled = false
        myprofile_lbl_welcome.text = "Welcome  " + global_signedin_obj_Users.user_Name + "  !!"
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
