//
//  MenuTableVC.swift
//  IndigoIndianBistro
//
//  Created by Sugat Nagavkar on 22/08/16.
//  Copyright © 2016 Sugat Nagavkar. All rights reserved.
//

import Foundation
import UIKit

class MenuTableVC : UITableViewController {
    
    @IBOutlet weak var more: UIBarButtonItem!
   
    override func viewDidLoad() {
        
        more.target = self.revealViewController()
        more.action = #selector(SWRevealViewController.revealToggle(_:))
        
        self.title = "Menu"
        self.navigationController?.navigationBar.barTintColor = UIColor.red
        self.navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: "Avenir", size: 18)!]
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        
        //set up menu array
        
        //menuDescArray = ["123", "1234", "", "", "", "", "", ""]
        
        //detailMenuArray database
                
        //singledetailmenu array database
        
    
    self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        tableView.tableFooterView = UIView()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.menuArray.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let menuCell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath)
        menuCell.textLabel?.text = Model.menuArray[indexPath.row]
        //menuCell.detailTextLabel?.text = menuDescArray[indexPath.row]
        //cell.imageView?.image =
        return menuCell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var indexPath: IndexPath = self.tableView.indexPathForSelectedRow!
        
        let destinationVC = segue.destination as! DetailMenuTableVC
        
        var detailMenuArrayTwo : DetailMenu
        var singledetailMenuArrayTwo : SingleDetail
        detailMenuArrayTwo = Model.detailMenuArray[indexPath.row]
        singledetailMenuArrayTwo = Model.singleDetailMenuArray[indexPath.row]
        destinationVC.detailMenuArray = detailMenuArrayTwo.detailTitle
        destinationVC.rateArray = detailMenuArrayTwo.rateTitle
        
        destinationVC.singleMenuArray = singledetailMenuArrayTwo.singleDetail
        destinationVC.title = Model.menuArray[indexPath.row]
        
    }
    
}
