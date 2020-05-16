//
//  CustomTableViewCell.swift
//  CountryCodePluginDemo
//
//  Created by Mike on 2020/5/17.
//  Copyright © 2020 Mike. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var codeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
