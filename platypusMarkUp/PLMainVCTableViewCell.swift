//
//  PLMainVCTableViewCell.swift
//  platypusMarkUp
//
//  Created by Divjyot Singh on 11/8/17.
//  Copyright © 2017 Divjyot Singh. All rights reserved.
//

import UIKit

class PLMainVCTableViewCell: UITableViewCell {

    @IBOutlet weak var serialNoLabel: UILabel!
    @IBOutlet weak var classCodeLabel: UILabel!
    @IBOutlet weak var classTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
