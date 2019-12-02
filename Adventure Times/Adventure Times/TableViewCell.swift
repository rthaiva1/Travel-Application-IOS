//
//  TableViewCell.swift
//  Adventure Times
//
//  Created by Rosh Sugathan Thaivalappil on 11/30/19.
//  Copyright © 2019 Rosh Sugathan Thaivalappil. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    @IBOutlet var pic: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        Init()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        Init()
        // Configure the view for the selected state
    }
    
    func Init()
    {
        label!.text = ""
    }
    
    func set(imagename: String,name: String)
    {
        pic.image = UIImage(named: imagename)
        label!.text = name
    }
}
