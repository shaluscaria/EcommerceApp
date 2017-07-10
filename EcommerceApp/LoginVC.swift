//
//  LoginVC.swift
//  EcommerceApp
//
//  Created by Shalu Scaria on 2017-03-16.
//  Copyright © 2017 Shalu Scaria. All rights reserved.
//

import UIKit

var global_obj_devices = Devices()
var global_array_devices = global_obj_devices.addToDevices()

class LoginVC: UIViewController {
    
    
    
    
    
    @IBAction func onButtonClickSignUp(_ sender: UIButton) {
    
        self.performSegue(withIdentifier: "LoginToSignUpScreen", sender: LoginVC())
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //let width = UIScreen.main.bounds.width
        //let height = UIScreen.main.bounds.height
        
        //print("Width : \(width) , Height : \(height) ")
        self.view.backgroundColor = UIColor(patternImage:UIImage(named: "loginbgm_1500.png")!)
        
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
