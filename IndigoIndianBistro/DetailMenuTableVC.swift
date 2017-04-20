//  DetailMenuTableVC.swift
//  IndigoIndianBistro
//
//  Created by Sugat Nagavkar on 22/08/16.
//  Copyright © 2016 Sugat Nagavkar. All rights reserved.
//

import Foundation
import UIKit

class DetailMenuTableVC : UITableViewController {
    //second array vc
    
    var detailMenuArray = [String]()//SecondArray
    var rateArray = [String]()
    var singleMenuArray = [String]()
    
    override func viewDidLoad() {
        
        self.navigationController?.navigationBar.barTintColor = UIColor.red
        self.navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: "Avenir", size: 18)!]
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        tableView.tableFooterView = UIView()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let detailMenuCell = tableView.dequeueReusableCell(withIdentifier: "detailMenuCell", for: indexPath) as UITableViewCell
        
        detailMenuCell.textLabel?.text = detailMenuArray[indexPath.row]
        detailMenuCell.detailTextLabel?.text = rateArray[indexPath.row]
        
        
        return detailMenuCell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return detailMenuArray.count
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var indexPath: IndexPath = self.tableView.indexPathForSelectedRow!
        let singleDetailDestination = segue.destination as! SingleDetailMenuVC
        
        singleDetailDestination.singleDetailString = singleMenuArray[indexPath.row]
        singleDetailDestination.title = detailMenuArray[indexPath.row]
        singleDetailDestination.singleDetailtitle = detailMenuArray[indexPath.row]
        singleDetailDestination.singleDetailRate = rateArray[indexPath.row]
        
    }
    
    
    
}
