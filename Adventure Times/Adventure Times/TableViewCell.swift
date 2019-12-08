//
//  TableViewCell.swift
//  Adventure Times
//
//  Created by Rosh Sugathan Thaivalappil on 11/30/19.
//  Copyright © 2019 Rosh Sugathan Thaivalappil. All rights reserved.
//

import UIKit
class TableViewCell: UITableViewCell {

    @IBOutlet var dpic: UIImageView!
    @IBOutlet weak var dlab: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        Init()
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        // Initialization code
        Init()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func Init()
    {
        dlab!.text = ""
    }
    
    func set(imagename: String,name: String)
    {
        dpic.image = UIImage(named: imagename)
        dlab!.text = name
    }
}
