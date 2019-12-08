//
//  Description.swift
//  Adventure Times
//
//  Created by Rosh Sugathan Thaivalappil on 12/7/19.
//  Copyright © 2019 Rosh Sugathan Thaivalappil. All rights reserved.
//

import UIKit

class Description: UIViewController {

    let desc =
        ["Great Pyramid of Giza",
         "Great Wall of China",
         "Petra - Jordan",
         "Christ the Redeemer - Brazil",
         "Machu Picchu - Peru",
         "Chichen Itza - Mexico",
         "Colosseum - Italy",
         "Taj Mahal - India"]
    var y: String!
    @IBOutlet var uimage: UIImageView!
    @IBOutlet weak var labeld: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        uimage.image = UIImage(named: y)
        labeld.text = desc[Int(y)! + 1]
    }

    @IBAction func onclick(_ sender: Any)
    {
                 performSegue(withIdentifier: "getback", sender: self)
    }
}
