//
//  CustomCellTableViewCell.swift
//  UnderlineSegment
//
//  Created by Dionte Silmon on 3/7/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import UIKit

class CustomCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var customImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var releaseDate: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
