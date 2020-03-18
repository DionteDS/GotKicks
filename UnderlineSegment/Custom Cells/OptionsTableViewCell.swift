//
//  OptionsTableViewCell.swift
//  UnderlineSegment
//
//  Created by Dionte Silmon on 3/11/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import UIKit

class OptionsTableViewCell: UITableViewCell {
    
    lazy var backView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: 50))
        return view
    }()
    
    lazy var detailLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 170, y: 10, width: 80, height: 50))
        label.textAlignment = .center
        label.font = UIFont(name: "DINCondensed-Bold", size: 25)
        return label
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        addSubview(backView)
        backView.addSubview(detailLabel)
    }

}
