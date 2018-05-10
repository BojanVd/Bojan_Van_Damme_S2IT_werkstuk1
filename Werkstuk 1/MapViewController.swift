//
//  MapViewController.swift
//  Werkstuk 1
//
//  Created by Stan Van Damme on 09/05/2018.
//  Copyright © 2018 VAN DAMME Bojan (s). All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {
    
    var locationManager = CLLocationManager()

    @IBOutlet weak var MijnTweedeMap: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        var gpsSteve = CLLocationCoordinate2D()
        var gpsNatasha = CLLocationCoordinate2D()
        var gpsBruce = CLLocationCoordinate2D()
        
        if let tbc = self.tabBarController as? TabController{
            gpsSteve = tbc.coorSteve
            gpsNatasha = tbc.coorNatasha
            gpsBruce = tbc.coorBruce
        }
        
        let annotationSteve:MijnAnnotation = MijnAnnotation(coordinate: gpsSteve, title: "Steve")
        let annotationNatasha:MijnAnnotation = MijnAnnotation(coordinate: gpsNatasha, title: "Natasha")
        let annotationBruce:MijnAnnotation = MijnAnnotation(coordinate: gpsBruce, title: "Bruce")
        
        self.MijnTweedeMap.addAnnotation(annotationSteve)
        self.MijnTweedeMap.addAnnotation(annotationNatasha)
        self.MijnTweedeMap.addAnnotation(annotationBruce)
        self.MijnTweedeMap.showAnnotations(self.MijnTweedeMap.annotations, animated: true)
        
        // Do any additional setup after loading the view.
        locationManager.requestAlwaysAuthorization()
        
        locationManager.startUpdatingLocation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.04, longitudeDelta: 0.04))
        
        mapView.setRegion(region, animated: true)
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
