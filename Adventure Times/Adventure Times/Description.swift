//
//  Description.swift
//  Adventure Times
//
//  Created by Rosh Sugathan Thaivalappil on 12/7/19.
//  Copyright © 2019 Rosh Sugathan Thaivalappil. All rights reserved.
//

import UIKit

class Description: UIViewController {

    var y: String!
    @IBOutlet var uimage: UIImageView!
    @IBOutlet weak var labeld: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        labeld.text = y
    }

    @IBAction func onclick(_ sender: Any)
    {
                 performSegue(withIdentifier: "getback", sender: self)
    }
}
