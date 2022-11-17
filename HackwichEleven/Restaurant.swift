//
//  Restaurant.swift
//  HackwichEleven
//
//  Created by user226981 on 11/16/22.
//

import UIKit
import MapKit

class Restaurant: NSObject, MKAnnotation {

    // Annotions/Pins with 3 diff data
    let restaurantTitle: String
    let restaurantType: String
    let coordinate: CLLocationCoordinate2D
    
    init(title:String, type: String, coordinate: CLLocationCoordinate2D) {
        self.restaurantTitle = title
        self.restaurantType = type
        self.coordinate = coordinate
        
        // Initialize object
        super.init()
    }
    var subtitle: String? {
        return restaurantType
    }
}