//
//  MijnAnnotation.swift
//  Werkstuk 1
//
//  Created by VAN DAMME Bojan (s) on 09/05/2018.
//  Copyright © 2018 VAN DAMME Bojan (s). All rights reserved.
//

import UIKit
import MapKit

//Aanmaken van een annotation klase

class MijnAnnotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    
    override init() {
        coordinate = CLLocationCoordinate2D()
        title = ""
    }
    
    init (coordinate:CLLocationCoordinate2D, title:String)
    {
        self.coordinate = coordinate
        self.title = title
        
    }
}

