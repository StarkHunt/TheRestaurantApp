//
//  ContactUsVC.swift
//  IndigoIndianBistro
//
//  Created by Sugat Nagavkar on 25/08/16.
//  Copyright © 2016 Sugat Nagavkar. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ContactUsVC: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var more: UIBarButtonItem!
    
    @IBOutlet weak var mapKit: MKMapView!
    
    // set up location property
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        more.target = self.revealViewController()
        more.action = #selector(SWRevealViewController.revealToggle(_:))
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        // Do any additional setup after loading the view, typically from a nib.
        //set up location manager
        self.locationManager.delegate = self
        //confirms to delegate method.
        
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        //to get exact location
        
        self.locationManager.requestWhenInUseAuthorization()
        //want location when using the app not in the background
        
        self.locationManager.startUpdatingLocation()
        //look for location Manager
        
        //to show dot to the location
        self.mapKit.showsUserLocation = true
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //implement delegate methods
    
    //MARK: -Location Delegate Methods
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let location = locations.last
        let center : CLLocationCoordinate2D = manager.location!.coordinate
        
        //(latitude: location!.coordinate.latitude, longitude: location!.coordinate.longitude)
        let latCoordinate = location?.coordinate.latitude
        let lonCoordinate = location?.coordinate.longitude
        
        print("Latitude : \(latCoordinate). Longitute:\(lonCoordinate) ")
        
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        self.mapKit.setRegion(region, animated: true)
        self.locationManager.stopUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Errors" + error.localizedDescription)
    }
    

    
}
