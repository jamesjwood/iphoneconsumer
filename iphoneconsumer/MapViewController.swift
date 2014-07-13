//
//  ViewController.swift
//  iphoneconsumer
//
//  Created by James Wood on 13/07/2014.
//  Copyright (c) 2014 James Wood. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet var mapView: MKMapView
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mapView.delegate = self;
        self.mapView.showsUserLocation  = true
    }
    
    var locationsSet = false;
    func mapView(mapView: MKMapView!, didUpdateUserLocation userLocation: MKUserLocation!)
    {
        if(!locationsSet)
        {
            locationsSet = true;
            var userCoordinate = userLocation.coordinate
            var viewRegion = MKCoordinateRegionMakeWithDistance(userCoordinate, 5000, 5000)
            self.mapView.setRegion(viewRegion, animated: true)
        }
    }
    
    func mapView(mapView: MKMapView!, regionDidChangeAnimated animated: Bool)
    {
        if(mapView)
        {
            var annotation = MapViewAnnotation(latitude: 0, longitude: 0)
            //self.mapView.addAnnotation(annotation)
            self.mapView.setNeedsDisplay();
        }
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

