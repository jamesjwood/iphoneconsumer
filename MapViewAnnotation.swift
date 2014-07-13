//
//  MapViewAnnotation.swift
//  Fixr
//
//  Created by James Wood on 03/07/2014.
//  Copyright (c) 2014 James Wood. All rights reserved.
//

import Foundation
import MapKit

class MapViewAnnotation: NSObject, MKAnnotation
{
    var _coordinate: CLLocationCoordinate2D;

    
    init(Coordinate coordinate:CLLocationCoordinate2D){
        _coordinate = coordinate
    }
    
    convenience init(latitude: Double, longitude: Double)
    {
        self.init(Coordinate: CLLocationCoordinate2D(latitude: latitude, longitude: longitude))
    }
    
    var coordinate: CLLocationCoordinate2D
    {
    get{
        return _coordinate;
    }
    }
    
    
}