//
//  MyCartVC.swift
//  EcommerceApp
//
//  Created by Shalu Scaria on 2017-03-17.
//  Copyright © 2017 Shalu Scaria. All rights reserved.
//

import UIKit

class MyCartVC: UIViewController,UITableViewDelegate , UITableViewDataSource{
    
    
    @IBOutlet weak var mycartvc_tableview: UITableView!
    @IBOutlet weak var mycartvc_lbl_totalprice: UILabel!

    @IBAction func onButtonClickClearAll(_ sender: UIButton) {
        let alertView = UIAlertController(title: "Clear all?", message: "Do you really want to clear all items from your cart?", preferredStyle: .alert)
        alertView.addAction(UIAlertAction(title: "No", style: .default, handler: nil))
        alertView.addAction(UIAlertAction(title: "Clear", style: .destructive, handler: { (alertAction) -> Void in
        
            global_array_Cart.removeAll()
        self.mycartvc_tableview.reloadData()}))
        
        self.present(alertView, animated: true, completion: nil)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage:UIImage(named: "loginbgm_1500.png")!)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return global_array_Cart.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCartCell", for: indexPath) as! MyCartCustomCellTVC
        
        cell.mycart_image.image = UIImage(named: global_array_Cart[indexPath.row].device_image)
        cell.mycart_lbl_device.text = global_array_Cart[indexPath.row].device_Type
        cell.mycart_lbl_price.text = "$" + String(global_array_Cart[indexPath.row].total_price)
        cell.mycart_lbl_quantity.text = String(global_array_Cart[indexPath.row].ordered_qty)
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
      return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            global_array_Cart.remove(at: indexPath.row)
        }
        
        mycartvc_tableview.reloadData()
        
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
