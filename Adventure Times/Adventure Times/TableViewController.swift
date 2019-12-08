//
//  TableViewController.swift
//  Adventure Times
//
//  Created by Rosh Sugathan Thaivalappil on 11/30/19.
//  Copyright © 2019 Rosh Sugathan Thaivalappil. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let destinations =
        [
            ["1","Great Pyramid of Giza"],
            ["2","Great Wall of China"],
            ["3","Petra - Jordan"],
            ["4","Christ the Redeemer - Brazil"],
            ["5","Machu Picchu - Peru"],
            ["6","Chichen Itza - Mexico"],
            ["7","Colosseum - Italy"],
            ["8","Taj Mahal - India"]]
    
    var t: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "destinationcell")
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return destinations.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "destinationcell", for: indexPath) as! TableViewCell
        let image = destinations[indexPath.row][0]
        let description = destinations[indexPath.row][1]
        cell.backgroundView = UIImageView.init(image: UIImage.init(named: "back"))
        // Configure the cell...
        cell.set(imagename: image,name: description)
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        t = destinations[indexPath.row][0] 
        self.performSegue(withIdentifier: "showdetails", sender: self)
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? Description
        {
            destination.y = t
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }


}
