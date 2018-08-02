//
//  customTableViewCell.swift
//  NirogStreet
//
//  Created by Shivendra Pandey on 29/05/18.
//  Copyright © 2018 Diwakar Pandey. All rights reserved.
//

import UIKit

class customTableViewCell: UITableViewCell {
    @IBOutlet weak var iranman: UILabel!
    
    @IBOutlet weak var cellView: UIView!


    @IBOutlet weak var iranManImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
