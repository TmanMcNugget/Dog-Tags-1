//
//  ViewController.swift
//  Dog Tags #1
//
//  Created by period2 on 10/31/18.
//  Copyright © 2018 period2. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
class ViewController: UIViewController, CLLocationManagerDelegate,  MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    let locationManager = CLLocationManager()
    //var center = MKUserLocation()
    var center = (CLLocationCoordinate2D.init(latitude: 38.89731, longitude: -77.00626))
    let geocoder = CLGeocoder()
    var stops = [[String: Any]]()
    var auto: Bool = true
    override func viewDidLoad() {
        super.viewDidLoad()

        locationManager.delegate = self
        locationManager.startUpdatingLocation()
        locationManager.requestLocation()
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
        mapView.showsUserLocation = true
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        return 
    }
    func locationManager(_ manager: CLLocationManager,
                         didUpdateLocations locations: [CLLocation])
    {
        self.locationManager.stopUpdatingLocation()
        let myLocation = locations.first!
        //let span = MKCoordinateSpanMake(0.01, 0.01)
        let span = MKCoordinateSpanMake(0.01, 0.01)
        let region = MKCoordinateRegionMake(self.toCLLocation2D(myLocation), span)
        //self.mapView.setRegion(region, animated: true)
        //let userArea = center.coordinate
        self.mapView.setRegion(region, animated: true)
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus)
    {
        if status == .authorizedWhenInUse
        {
            locationManager.requestAlwaysAuthorization()
            locationManager.startUpdatingLocation()
            locationManager.requestLocation()
        }
    }

    func toCLLocation2D(_ location: CLLocation) -> CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
    }
}

