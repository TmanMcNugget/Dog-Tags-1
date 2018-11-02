//
//  ViewController.swift
//  Dog Tags #1
//
//  Created by period2 on 10/31/18.
//  Copyright © 2018 period2. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    let locationManager = CLLocationManager()
    var center = (CLLocationCoordinate2D.init(latitude: 38.89731, longitude: -77.00626))
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func locationManager(_ manager: CLLocationManager,
                         didUpdateLocations locations: [CLLocation])
    {
        let myLocation = locations.first!
        let span = MKCoordinateSpanMake(0.01, 0.01)
        let region = MKCoordinateRegionMake(center, span)
        self.mapView.setRegion(region, animated: true)
    }

}

