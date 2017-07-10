//
//  CustomCellTVC.swift
//  EcommerceApp
//
//  Created by Shalu Scaria on 2017-03-18.
//  Copyright © 2017 Shalu Scaria. All rights reserved.
//

import UIKit

class CustomCellTVC: UITableViewCell {
    
    
    
    @IBOutlet weak var customcell_image: UIImageView!
    
    
    @IBOutlet weak var customcell_label_name: UILabel!
    
    @IBOutlet weak var customcell_label_quantity: UILabel!

    @IBOutlet weak var customcell_label_price: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
