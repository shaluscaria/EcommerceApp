//
//  RegistrationVC.swift
//  EcommerceApp
//
//  Created by Shalu Scaria on 2017-03-17.
//  Copyright © 2017 Shalu Scaria. All rights reserved.
//

import UIKit



class RegistrationVC: UIViewController {
    
    //var registration_obj_Users = Users()

    @IBOutlet weak var registration_image_bgm: UIImageView!
    @IBAction func onButtonClickLetsGetStarted(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "RegisterToProductsScreen", sender: RegistrationVC())
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registration_image_bgm.image = UIImage(named: "loginbgm.jpg")
        //print("\(registration_array_Users[0].user_Name)")
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
