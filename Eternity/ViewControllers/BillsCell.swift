//
//  BillsCell.swift
//  Eternity
//
//  Created by Helal Chowdhury on 3/17/19.
//  Copyright © 2019 Yasin Ehsan. All rights reserved.
//

import UIKit

class BillsCell: UITableViewCell {

    @IBOutlet weak var billsImageView: UIView!
    @IBOutlet weak var billsAmountText: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}