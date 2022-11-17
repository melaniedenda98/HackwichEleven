//
//  RestuarantTwo.swift
//  HackwichEleven
//
//  Created by user226981 on 11/16/22.
//

import UIKit
import MapKit

class RestuarantTwo: NSObject, MKAnnotation {

    let restaurantTitleTwo: String
    let restaurantTypeTwo: String
    let coordinateTwo: CLLocationCoordinate2D
    
    init(title:String, type: String, coordinate:CLLocationCoordinate2D) {
        self.restaurantTitleTwo = title
        self.restaurantTypeTwo = type
        self.coordinateTwo = coordinate
        
        super.init()
    }
        
    var subtitle: String? {
        return restaurantTitleTwo
    }
}

