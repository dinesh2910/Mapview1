//
//  ViewController.swift
//  Mapview1
//
//  Created by dinesh danda on 1/23/17.
//  Copyright © 2017 dinesh danda. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController,MKMapViewDelegate {
    @IBOutlet weak var mymapview: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // longitude and lattitude//
        
        let latitude = CLLocationDegrees(floatLiteral: 41.2705484)
        let longitude = CLLocationDegrees(floatLiteral: -72.9469711)
        
        //zoom level for map//
        
        let latdelta = CLLocationDegrees(floatLiteral: 0.05)
        let longdelta = CLLocationDegrees(floatLiteral: 0.05)
        
        //create a span//
        
        let span = MKCoordinateSpan(latitudeDelta: latdelta, longitudeDelta: longdelta)
        
        //create location from lat and long//
        
        let location = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        // create a region//
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        mymapview.setRegion(region, animated: true)
        
        let annotattion = MKPointAnnotation()
        annotattion.title = "West Haven"
        annotattion.subtitle = "I leave here from two years"
        annotattion.coordinate = location
        
        mymapview.addAnnotation(annotattion)
        
        
        
        }

}

