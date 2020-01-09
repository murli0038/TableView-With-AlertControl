//
//  myTableViewCell.swift
//  TableViewWithAlertController
//
//  Created by Nikunj Prajapati on 29/12/19.
//  Copyright © 2019 Nikunj Prajapati. All rights reserved.
//

import UIKit

class myTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
