//
//  SecondViewController.swift
//  EcommerceApp
//
//  Created by Shalu Scaria on 2017-03-16.
//  Copyright © 2017 Shalu Scaria. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController,UITableViewDelegate,UITableViewDataSource , UISearchBarDelegate {
    
    @IBOutlet weak var productsvc_tableview: UITableView!
    var array_phone = [Devices]()
    var array_computer = [Devices]()
    
    var search_active = false
    
    var filter_phone = [Devices]()
    var filter_computers = [Devices]()
    
    var obj_ToPass = Devices()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for val in global_array_devices{
            if val.device_category == "Cell Phones"{
                array_phone.append(val)
            }
            else {
                array_computer.append(val)
            }
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if search_active == true {
            if section == 0{
                return filter_phone.count
            }
            else {
                return filter_computers.count
            }
        }
        
        else {
            if section == 0{
                return array_phone.count
            }
            else {
                return array_computer.count
            }
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! CustomCellTVC
        
        if search_active == true {
            if indexPath.section == 0 {
                
                cell.customcell_image.image = UIImage(named: filter_phone[indexPath.row].device_image)
                cell.customcell_label_name?.text = filter_phone[indexPath.row].device_type
                cell.customcell_label_price?.text = String (filter_phone[indexPath.row].device_price)
                cell.customcell_label_quantity?.text = String(filter_phone[indexPath.row].device_quantity)
            }
            else {
                cell.customcell_image.image = UIImage(named: filter_computers[indexPath.row].device_image)
                cell.customcell_label_name?.text = filter_computers[indexPath.row].device_type
                cell.customcell_label_price?.text = String (filter_computers[indexPath.row].device_price)
                cell.customcell_label_quantity?.text = String(filter_computers[indexPath.row].device_quantity)
            }
            
        }
        
        else {
            if indexPath.section == 0 {
                
                cell.customcell_image.image = UIImage(named: array_phone[indexPath.row].device_image)
                cell.customcell_label_name?.text = array_phone[indexPath.row].device_type
                cell.customcell_label_price?.text = String (array_phone[indexPath.row].device_price)
                cell.customcell_label_quantity?.text = String(array_phone[indexPath.row].device_quantity)
            }
            else {
                cell.customcell_image.image = UIImage(named: array_computer[indexPath.row].device_image)
                cell.customcell_label_name?.text = array_computer[indexPath.row].device_type
                cell.customcell_label_price?.text = String (array_computer[indexPath.row].device_price)
                cell.customcell_label_quantity?.text = String(array_computer[indexPath.row].device_quantity)
            }
        }
        
        return cell
    }
    
    
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "Cell Phones"
        }
        else {
            return "Computers"
        }
    }
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
    
        if searchBar.text!.isEmpty {
            search_active = false
            
        }
        else {
            
            search_active = true
            filter_computers.removeAll()
            filter_phone.removeAll()
            
            for val in array_phone {
                
                let device_type_lowercase = val.device_type.lowercased()
                
                if (device_type_lowercase.range(of: searchText.lowercased()) != nil){
                    
                    filter_phone.append(val)
                }
            }
           
            
            for val in array_computer {
                
                let device_type_lowercase = val.device_type.lowercased()
                
                if (device_type_lowercase.range(of: searchText.lowercased()) != nil){
                    
                    filter_computers.append(val)
                }
            }
           
        }
        
        productsvc_tableview.reloadData()
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if search_active == true {
            if indexPath.section == 0 {
                obj_ToPass = filter_phone[indexPath.row]
            }
            else {
                obj_ToPass = filter_computers[indexPath.row]
            }
            
        }
            
        else {
            if indexPath.section == 0 {
                obj_ToPass = array_phone[indexPath.row]
            }
            else {
                obj_ToPass = array_computer[indexPath.row]
            }
        }
        
        self.performSegue(withIdentifier: "ProductToProductDetails", sender: ProductsVC())
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ProductToProductDetails" {
            
            let product_details = segue.destination as! ProductDetailsVC
            product_details.productdeatils_obj_Devices = obj_ToPass
            
        }
    }
}






















