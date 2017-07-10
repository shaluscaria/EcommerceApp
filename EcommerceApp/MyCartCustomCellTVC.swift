//
//  MyCartCustomCellTVC.swift
//  EcommerceApp
//
//  Created by Shalu Scaria on 2017-03-18.
//  Copyright © 2017 Shalu Scaria. All rights reserved.
//

import UIKit

class MyCartCustomCellTVC: UITableViewCell {

    
    @IBOutlet weak var mycart_image: UIImageView!
    
    @IBOutlet weak var mycart_lbl_price: UILabel!
    
   
    @IBOutlet weak var mycart_lbl_device: UILabel!
    
    
    
    @IBOutlet weak var mycart_lbl_quantity: UILabel!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
