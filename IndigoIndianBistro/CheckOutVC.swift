//
//  CheckOutVC.swift
//  IndigoIndianBistro
//
//  Created by Sugat Nagavkar on 28/08/16.
//  Copyright © 2016 Sugat Nagavkar. All rights reserved.
//

import Foundation
import UIKit

class CheckOutVC: UIViewController {
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    var totalAmountString = String()
    @IBOutlet weak var phone: UITextField!
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var instruction: UITextField!
    
    @IBOutlet weak var address: UITextField!
    
    @IBOutlet weak var pick: UISegmentedControl!
    
    override func viewDidLoad() {
        totalAmountLabel.text = totalAmountString
        
    }
    @IBAction func pickAction(_ sender: AnyObject) {
        
        if pick.selectedSegmentIndex == 1{
            address.text = "Does Not Apply"
        }
    }
    
    @IBAction func placeOrder(_ sender: AnyObject) {
        
        let phoneText = phone.text!
        let nameText = name.text!
        
        if (phoneText.isEmpty || nameText.isEmpty){
            sendAlert("Please Enter all vacant fields")
            return
        }
        sendAlert("Your Order has been Placed")
        
    
        }
    
    func sendAlert(_ messageString : String){
        let alert = UIAlertController(title: "Thank You", message: messageString, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(OKAction)
        self.present(alert, animated: true, completion: nil)
    }
}
