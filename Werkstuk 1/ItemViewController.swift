//
//  ItemViewController.swift
//  Werkstuk 1
//
//  Created by VAN DAMME Bojan (s) on 09/05/2018.
//  Copyright © 2018 VAN DAMME Bojan (s). All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ItemViewController: UIViewController {
    
    //Overnemen data van vorige view
    var temp = Persoon()
    var locationManager = CLLocationManager()
    
    //Inladen van de verschillende elementen in view om later aan te spreken
    @IBOutlet weak var VolledigeNaam: UILabel!
    @IBOutlet weak var PersoonFoto: UIImageView!
    @IBOutlet weak var GSMNummer: UILabel!
    @IBOutlet weak var StraatHuisnummer: UILabel!
    @IBOutlet weak var GemeentePostcode: UILabel!
    @IBOutlet weak var MijnMap: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Aanpassen van labels text
        self.VolledigeNaam.text = temp.naam + " " + temp.voornaam
        self.PersoonFoto.image = temp.foto
        self.GSMNummer.text = temp.telefoonnummer.description
        self.StraatHuisnummer.text = temp.adres.straat + " " + temp.adres.huisnummer.description
        self.GemeentePostcode.text = temp.adres.gemeente + " " + temp.adres.postcode.description
        
        //Aanvragen om GPS te mogen gebruiken
        locationManager.requestAlwaysAuthorization();
        if CLLocationManager.locationServicesEnabled(){
            locationManager.startUpdatingLocation()
        }
        
        //Instellen van gps coordinaten en teovoegen van annotation
        let coordinate:CLLocationCoordinate2D = temp.gps
        let annotation:MijnAnnotation = MijnAnnotation(coordinate: coordinate , title: temp.naam)
        
        self.MijnMap.addAnnotation(annotation)
        self.MijnMap.selectAnnotation(annotation, animated: true)
        
        //Locatie van zichtbare map bepalen
        let center = CLLocationCoordinate2D(latitude: (temp.gps.latitude), longitude: (temp.gps.longitude))
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        
        MijnMap.setRegion(region, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        //Meegeven van fotoinformatie aan volgende view
        if let nextVC = segue.destination as? ImageViewController
        {
            nextVC.image = PersoonFoto.image!
        }
        
    }
    

}
