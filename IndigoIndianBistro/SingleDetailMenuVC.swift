//
//  SingleDetailMenuVC.swift
//  IndigoIndianBistro
//
//  Created by Sugat Nagavkar on 22/08/16.
//  Copyright © 2016 Sugat Nagavkar. All rights reserved.
//

import Foundation
import UIKit

class SingleDetailMenuVC : UIViewController {
    
    @IBOutlet weak var quantitySelect: UITextField!
    
    @IBOutlet weak var imageSingleDetail: UIImageView!
    
    @IBOutlet weak var detailSingle: UITextView!
    
    var singleDetailString = String()
    var singleDetailRate = String()
    var singleDetailtitle = String()
    
    override func viewDidLoad() {
        
        detailSingle.text = singleDetailString
        self.navigationController?.navigationBar.barTintColor = UIColor.red
        self.navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: "Avenir", size: 18)!]
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
//        var indexPath: NSIndexPath = self.tableView.indexPathForSelectedRow!
        let bagVCDetailDestination = segue.destination as! BagVC
        
        bagVCDetailDestination.selectionString = singleDetailtitle
        bagVCDetailDestination.quantityString = quantitySelect.text
        bagVCDetailDestination.priceString = singleDetailRate
        
        
//        singleDetailDestination.singleDetailString = singleMenuArray[indexPath.row]
//        singleDetailDestination.title = detailMenuArray[indexPath.row]
//        singleDetailDestination.singleDetailtitle = detailMenuArray[indexPath.row]
//        singleDetailDestination.singleDetailRate = rateArray[indexPath.row]
        
    }

    
    
    
    
    
    
}
