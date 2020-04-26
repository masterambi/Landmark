//
//  DetailViewController.swift
//  Landmark
//
//  Created by Ramzy Rashaun Arief on 21/04/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var landmarkImage: UIImageView!
    @IBOutlet weak var landmarkTitle: UILabel!
    @IBOutlet weak var landmarkLocation: UILabel!
    @IBOutlet weak var landmarkMap: MKMapView!
    @IBOutlet weak var landmarkDescription: UILabel!
    
    var landmark: Landmark?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let result = landmark {
            landmarkImage.image = result.image
            landmarkTitle.text = result.name
            landmarkLocation.text = result.location
            displayMapLocation(location: result.location)
            landmarkDescription.text = result.description
        }
        
    }
    
    func displayMapLocation(location: String) {
        let geocoder = CLGeocoder()
        
        geocoder.geocodeAddressString(location) {
            placemarks, error in
            
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            if let placemarks = placemarks {
                let placemark = placemarks[0]
                
                let annotation = MKPointAnnotation()
                
                if let location = placemark.location {
                    annotation.coordinate = location.coordinate
                    self.landmarkMap.addAnnotation(annotation)
                    
                    let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 300, longitudinalMeters: 300)
                    self.landmarkMap.setRegion(region, animated: false)
                }
            }
            
        }
    }
    
}
