//
//  ViewController.swift
//  Dog Tags #1
//
//  Created by period2 on 10/31/18.
//  Copyright © 2018 period2. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController, CLLocationManagerDelegate,  MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    let locationManager = CLLocationManager()
    var center = MKUserLocation()
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
        locationManager.requestLocation()
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        return
    }
    func locationManager(_ manager: CLLocationManager,
                         didUpdateLocations locations: [CLLocation])
    {
        let myLocation = locations.first!
        let span = MKCoordinateSpanMake(0.01, 0.01)
        let userArea = center.coordinate
        self.mapView.setCenter(userArea, animated: true)
    }
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus)
    {
        if status == .authorizedWhenInUse
        {
            locationManager.startUpdatingLocation()
            locationManager.requestLocation()
        }
    }

}

