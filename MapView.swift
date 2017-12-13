//
//  MapView.swift
//  GraceRetreatCenter
//
//  Created by Jong Kim on 6/16/17.
//  Copyright © 2017 Jong Kim. All rights reserved.
//

import UIKit
import MapKit

class MapView: UIViewController {

    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(33.733099,-117.4562163)
        let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        mapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = " Grace Retreat Center"
        annotation.subtitle = " 은혜기도원"
        mapView.addAnnotation(annotation)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
