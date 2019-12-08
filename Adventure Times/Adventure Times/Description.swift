//
//  Description.swift
//  Adventure Times
//
//  Created by Rosh Sugathan Thaivalappil on 12/7/19.
//  Copyright © 2019 Rosh Sugathan Thaivalappil. All rights reserved.
//

import UIKit

class Description: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet weak var viewCollection: UICollectionView!
    
    let img =
    [
    ["1a","1b","1c","1d"],
    ["2a","2b","2c","2d"],
    ["3a","3b","3c","3d"],
    ["4a","4b","4c","4d"],
    ["5a","5b","5c","5d"],
    ["6a","6b","6c","6d"],
    ["7a","7b","7c","7d"],
    ["8a","8b","8c","8d"],
    ]
    let desc =
        ["The Great Pyramid of Giza is the oldest and largest of the three pyramids in the Giza pyramid complex bordering present-day Giza in Greater Cairo, Egypt. It is the oldest of the Seven Wonders of the Ancient World, and the only one to remain largely intact.",
         "The Great Wall of China is the collective name of a series of fortification systems generally built across the historical northern borders of China to protect and consolidate territories of Chinese states and empires against various nomadic groups of the steppe and their polities.",
         "Petra is a famous archaeological site in Jordan's southwestern desert. Dating to around 300 B.C., it was the capital of the Nabatean Kingdom. Accessed via a narrow canyon called Al Siq, it contains tombs and temples carved into pink sandstone cliffs, earning its nickname, the Rose City. ",
         "Christ the Redeemer is an Art Deco statue of Jesus Christ in Rio de Janeiro, Brazil, created by French sculptor Paul Landowski and built by Brazilian engineer Heitor da Silva Costa, in collaboration with French engineer Albert Caquot. Romanian sculptor Gheorghe Leonida fashioned the face.",
         "Machu Picchu is an Incan citadel set high in the Andes Mountains in Peru, above the Urubamba River valley. Built in the 15th century and later abandoned, it’s renowned for its sophisticated dry-stone walls that fuse huge blocks without the use of mortar, intriguing buildings that play on astronomical alignments and panoramic views. Its exact former use remains a mystery.",
         "Chichén Itzá is a complex of Mayan ruins on Mexico's Yucatán Peninsula. A massive step pyramid, known as El Castillo or Temple of Kukulcan, dominates the ancient city, which thrived from around 600 A.D. to the 1200s. Graphic stone carvings survive at structures like the ball court, Temple of the Warriors and the Wall of the Skulls. Nightly sound-and-light shows illuminate the buildings' sophisticated geometry.",
         "The Colosseum or Coliseum, also known as the Flavian Amphitheatre, is an oval amphitheatre in the centre of the city of Rome, Italy. Built of travertine limestone, tuff, and brick-faced concrete, it was the largest amphitheatre ever built at the time and held 50,000 spectators.",
         "The Taj Mahal is an ivory-white marble Islamic mausoleum on the south bank of the Yamuna river in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor Shah Jahan to house the tomb of his favourite wife, Mumtaz Mahal; it also houses the tomb of Shah Jahan himself."]
    var y: String!
    @IBOutlet var uimage: UIImageView!
    @IBOutlet weak var labeld: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        uimage.image = UIImage(named: y)
        labeld.text = desc[Int(y)! - 1]
        
        self.viewCollection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "collectcell")
        viewCollection.delegate = self
        viewCollection.dataSource = self
    }

    @IBAction func onClick(_ sender: Any)
    {
        performSegue(withIdentifier: "getback", sender: self)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectcell", for: indexPath)
        cell.backgroundView = UIImageView.init(image: UIImage.init(named: img[Int(y)! - 1][indexPath.row]))
        return cell
    }
    
}
