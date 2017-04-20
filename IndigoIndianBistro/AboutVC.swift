//
//  AboutVC.swift
//  IndigoIndianBistro
//
//  Created by Sugat Nagavkar on 25/08/16.
//  Copyright © 2016 Sugat Nagavkar. All rights reserved.
//

import Foundation
import UIKit

class AboutVC : UIViewController {
    
    @IBOutlet weak var more: UIBarButtonItem!
    
    override func viewDidLoad() {
        more.target = self.revealViewController()
        more.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
    }
}
