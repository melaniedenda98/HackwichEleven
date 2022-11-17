//
//  ViewController.swift
//  HackwichEleven
//
//  Created by user226981 on 11/16/22.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    
    @IBOutlet weak var mapView: MKMapView!
    
    //Location can be found on google maps
    let initialLocation = CLLocation(latitude: 21.361888, longitude: -158.055725)
    
    // Radius of Location in meters
    let regionRadius = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        centerMapOnLocation(location: initialLocation)
        // Do any additional setup after loading the view.
        
        //Add first annotation
        let restaurantOne = Restaurant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        //Second Annotation
        let restaurantTwo = RestuarantTwo (title: "Zippy's", type:  "American", coordinate: CLLocationCoordinate2D(latitude: 21.33461, longitude: -158.08213))
        mapView.addAnnotation(restaurantOne)
        mapView.addAnnotation(restaurantTwo)
    }
    
    // Make that location in the center (Creating a function)
    func centerMapOnLocation(location:CLLocation){
        
        //Create a region that puts initial location. UHWO at center of map
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: CLLocationDistance(regionRadius), longitudinalMeters: CLLocationDistance(regionRadius))
        // Map set location
        mapView.setRegion(coordinateRegion, animated: true)
    }

}

