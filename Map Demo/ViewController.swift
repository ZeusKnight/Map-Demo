//
//  ViewController.swift
//  Map Demo
//
//  Created by mocha on 8/3/15.
//  Copyright (c) 2015 mocha. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    @IBOutlet var map: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad();
        var lat:CLLocationDegrees = 41.889609;
        var lon:CLLocationDegrees = -87.619112;
        
        var latDelta:CLLocationDegrees = 0.01;
        var lonDelta:CLLocationDegrees = 0.01;
        
        var span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta);
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(lat, lon);
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span);
        map.setRegion(region, animated: true);
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

