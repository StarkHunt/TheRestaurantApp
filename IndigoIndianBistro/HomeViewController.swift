//
//  ViewController.swift
//  IndigoIndianBistro
//
//  Created by Sugat Nagavkar on 20/08/16.
//  Copyright © 2016 Sugat Nagavkar. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var more: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //instantiate more bar button to reveal controller
        more.target = self.revealViewController()
        more.action = #selector(SWRevealViewController.revealToggle(_:))
        
        //code for panning screen to more options.
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        //set title properties
        self.title = "Indigo Indian Bistro"
        self.navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: "Avenir", size: 18)!]
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let nav = navigationController?.navigationBar
        nav?.barTintColor = UIColor.red
        
    }


}

