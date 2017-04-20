//
//  BagVC.swift
//  IndigoIndianBistro
//
//  Created by Sugat Nagavkar on 24/08/16.
//  Copyright © 2016 Sugat Nagavkar. All rights reserved.
//

import Foundation
import UIKit


class BagVC : UIViewController, UITableViewDataSource, UITableViewDelegate {
    var subTotalArray = [Int]()
    var finalAmount : Double!
    @IBOutlet weak var subTotal: UILabel!
    
    @IBOutlet weak var tax: UILabel!
    
    @IBOutlet weak var tip: UILabel!
    
    @IBOutlet weak var grandTotal: UILabel!
    
    @IBOutlet weak var quantity: UITableView!
    var selectionString = String()
    var quantityString : String!
    var priceString = String()
    override func viewDidLoad() {
        
        bagData.bagDataDesc.append(selectionString)
        bagData.priceArray.append(priceString)
        bagData.quantityArray.append(quantityString)
        
        self.quantity.dataSource = self
        self.quantity.delegate = self
        
        //self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bagData.bagDataDesc.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            let bagCell = tableView.dequeueReusableCell(withIdentifier: "bagCell", for: indexPath) as! QuantityCell
            bagCell.selectionName.text = bagData.bagDataDesc[indexPath.row]

            bagCell.priceString = bagData.priceArray[indexPath.row]
        
        let dollarString = bagData.priceArray[indexPath.row]
        let removeDollarSign = dollarString.replacingOccurrences(of: "$ ", with: "", options: NSString.CompareOptions.literal, range: nil)
        
        let convertIntFromPrice = Int(removeDollarSign)!
        let convertIntFromQuantity = Int(bagData.quantityArray[indexPath.row])!
        
        let totalLabelInt = convertIntFromPrice * convertIntFromQuantity
        print("Total Label Int : \(totalLabelInt)")
        
        
        subTotalArray.append(totalLabelInt)
        
        for i in subTotalArray{
            print("SubTotalArray: \(i)")
        }
        
        
        bagCell.quantityLabel.text = bagData.quantityArray[indexPath.row]
        bagCell.totalLabel.text = "\(totalLabelInt)"
        
        return bagCell
        
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        calculateTotalAmount()
    }
    
    
    func calculateTotalAmount() {
        
        let arraySum = subTotalArray.reduce(0, +)
            print("ArraySum : \(arraySum)")
            
            subTotal.text = "\(arraySum)"
            let doubleSum = Double(arraySum)
            tax.text = "\(doubleSum * 0.08875)"
            tip.text = "\((doubleSum) * (0.10))"
            grandTotal.text = "$ \((doubleSum)+(doubleSum * 0.08875)+((doubleSum) * (0.10)))"
            print("GrandTotal : \((doubleSum)+(doubleSum * 0.08875)+((doubleSum) * (0.10)))")
            finalAmount = ((doubleSum)+(doubleSum * 0.08875)+((doubleSum) * (0.10)))
            print("final Amount : \(finalAmount)")
    }
    
    struct bagData {
        static var bagDataDesc = [String]()
        static var priceArray = [String]()
        static var quantityArray = [String]()
        //static var subTotalArray = [Int]()
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            bagData.bagDataDesc.remove(at: indexPath.row)
            bagData.priceArray.remove(at: indexPath.row)
            bagData.quantityArray.remove(at: indexPath.row)
            subTotalArray.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }else if editingStyle == .insert{
            
        }
        
        calculateTotalAmount()
        
    }
    
        
    
    
    
    

    

    
    
    
    
    
}





