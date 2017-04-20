//
//  MoreViewController.swift
//  IndigoIndianBistro
//
//  Created by Sugat Nagavkar on 20/08/16.
//  Copyright © 2016 Sugat Nagavkar. All rights reserved.
//

import Foundation
import UIKit


class MoreTableViewController: UITableViewController {
    
    var contentArray = [String]()
    
    override func viewDidLoad() {
        //fill up the array for more = 5 sections.
        
        self.title = "More"
        self.navigationController?.navigationBar.barTintColor = UIColor.red
        self.navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: "Avenir", size: 18)!]
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]

        
        contentArray = ["Home","Menu", "Reviews and Ratings", "About", "Contact Us"]
        
        //remove excess cells from the table.
        tableView.tableFooterView = UIView()
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.navigationController?.navigationBar.barTintColor = UIColor.red
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: contentArray[indexPath.row], for: indexPath) as UITableViewCell
        
        cell.textLabel?.text = contentArray[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contentArray.count
    }
}
