//
//  ListTableViewCell.swift
//  tableViewTask
//
//  Created by apple on 1/23/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    
    @IBOutlet weak var foodImageView: UIImageView!
    
    
    @IBOutlet weak var clientNameLabel: UILabel!
    
    
    @IBOutlet weak var clientAgeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
