//
//  Cell.swift
//  initiation-swift-tp
//
//  Created by Bérangère La Touche on 17/11/2017.
//  Copyright © 2017 Bérangère La Touche. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {

    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelClass: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
