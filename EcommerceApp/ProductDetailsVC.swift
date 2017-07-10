//
//  ProductDetailsVC.swift
//  EcommerceApp
//
//  Created by Shalu Scaria on 2017-03-18.
//  Copyright © 2017 Shalu Scaria. All rights reserved.
//

import UIKit


var global_obj_AddToCart = Orders()
var global_array_Cart = [Orders]()

class ProductDetailsVC: UIViewController {
    
    var productdeatils_obj_Devices = Devices()

    @IBOutlet weak var productdeatils_lbl_devicetype: UILabel!
    @IBOutlet weak var productdetails_image: UIImageView!
    
    
    @IBOutlet weak var productdeatils_txt_description: UITextView!
    
    
    
    @IBOutlet weak var productdetails_lbl_price: UILabel!
    
    
    @IBOutlet weak var productdetails_lbl_quantity: UILabel!
    
    @IBAction func onButtonClickAddToCart(_ sender: UIButton) {
        
        let orderid = "OD000" + String(arc4random())
        let cartobj = Orders(oid: orderid, deviceType: productdeatils_obj_Devices.device_type, qty: 1, price: productdeatils_obj_Devices.device_price,dimage: productdeatils_obj_Devices.device_image)
        //global_array_Cart = global_obj_AddToCart.addToCart(array_addtocart: global_array_Cart, obj_Orders: cartobj)
        
        global_array_Cart.append(cartobj)
        
        self.performSegue(withIdentifier: "ProductDetailsToProducts", sender: ProductDetailsVC())
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productdeatils_lbl_devicetype.text = productdeatils_obj_Devices.device_type
        productdetails_image.image = UIImage(named: productdeatils_obj_Devices.device_image)
        productdetails_lbl_price.text = String(productdeatils_obj_Devices.device_price)
        productdeatils_txt_description.text = productdeatils_obj_Devices.device_description
        productdetails_lbl_quantity.text = String(productdeatils_obj_Devices.device_quantity)

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
