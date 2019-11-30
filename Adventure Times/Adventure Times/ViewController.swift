//
//  ViewController.swift
//  Adventure Times
//
//  Created by Rosh Sugathan Thaivalappil on 11/27/19.
//  Copyright © 2019 Rosh Sugathan Thaivalappil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
         performSegue(withIdentifier: "viewtable", sender: self)
    }
}

