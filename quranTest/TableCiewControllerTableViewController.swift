//
//  TableCiewControllerTableViewController.swift
//  quranTest
//
//  Created by mr Yacine on 10/6/18.
//  Copyright © 2018 mr Yacine. All rights reserved.
//

import UIKit
//var index : IndexPath?
var index2: Int!

class myCell : UITableViewCell {
    
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Label2: UILabel!
    @IBOutlet weak var image1: UIImageView!
    
    func commonInit(imageName: String) {
        image1.image = UIImage(named: imageName)
    }
    var sectionIndex:Int?
    
}

class TableCiewControllerTableViewController: UITableViewController {

    var number = ["1","2","3","4"]
    let transportItems = ["image1","image2","image3","image4"]
    
    var storedOffsets = [Int: CGFloat]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageArray = ["im1","im2","im3","im4"]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return number.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "transportCell", for: indexPath) as! myCell
        cell.Label1.text = number[indexPath.row]
        cell.Label2.text = transportItems[indexPath.row]
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.reloadData()
        
        performSegue(withIdentifier: "quran", sender: nil)
        self.tableView.deselectRow(at: indexPath, animated: true)
       
        
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    
    func scroll(){
        
        ind = IndexPath(row: imageArray.count-1, section: 0)
        tableView.scrollToRow(at: ind!, at: .bottom, animated: true)
    }
    
    }

extension UITableView {
    
    func scrollToBottom(){
        
        DispatchQueue.main.async {
             ind = IndexPath(
                row: self.numberOfRows(inSection:  self.numberOfSections-1) - 1,
                section: self.numberOfSections - 1)
            self.scrollToRow(at: ind!, at: .bottom, animated: true)
        }
    }
    
    func scrollToTop() {
        
        DispatchQueue.main.async {
             ind = IndexPath(row: 0, section: 0)
            self.scrollToRow(at: ind!, at: .top, animated: false)
        }
    }
}
