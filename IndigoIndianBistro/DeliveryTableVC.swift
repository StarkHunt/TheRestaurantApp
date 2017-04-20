//
//  DeliveryTableVC.swift
//  IndigoIndianBistro
//
//  Created by Sugat Nagavkar on 24/08/16.
//  Copyright © 2016 Sugat Nagavkar. All rights reserved.
//

import Foundation
import UIKit

class DeliveryTableVC : UITableViewController {
    
    var deliveryArray = [String]()
    
    
    override func viewDidLoad() {
        
        deliveryArray = ["Regular Order", "Lunch Special", "Dinner Special"]
        
        tableView.tableFooterView = UIView()
        
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let deliveryCell = tableView.dequeueReusableCell(withIdentifier: "deliveryCell", for: indexPath)
        deliveryCell.textLabel?.text = deliveryArray[indexPath.row]
        return deliveryCell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return deliveryArray.count
    }
    
}
