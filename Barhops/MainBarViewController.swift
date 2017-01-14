//
//  ViewController.swift
//  Barhops
//
//  Created by Matthew Mauro on 2017-01-14.
//  Copyright © 2017 Matthew Mauro. All rights reserved.
//

import UIKit
import GoogleMaps

class MainBarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func loadView() {
        let camera = GMSCameraPosition.camera(withLatitude: 43.644652, longitude: 79.394988, zoom: 0.6)
        let mapView = GMSMapView.map(withFrame: self.view.frame, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 43.644652, longitude: 79.394988)
        marker.title = "Lighthouse Labs"
        marker.snippet = "Toronto"
        marker.map = mapView
    }
}
