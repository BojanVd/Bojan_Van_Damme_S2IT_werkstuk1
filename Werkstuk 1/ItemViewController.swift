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
    
    var temp = Persoon()

    @IBOutlet weak var VolledigeNaam: UILabel!
    @IBOutlet weak var PersoonFoto: UIImageView!
    @IBOutlet weak var GSMNummer: UILabel!
    @IBOutlet weak var StraatHuisnummer: UILabel!
    @IBOutlet weak var GemeentePostcode: UILabel!
    
    @IBOutlet weak var MijnMap: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.VolledigeNaam.text = temp.naam + " " + temp.voornaam
        self.PersoonFoto.image = temp.foto
        self.GSMNummer.text = temp.telefoonnummer.description
        self.StraatHuisnummer.text = temp.adres.straat + " " + temp.adres.huisnummer.description
        self.GemeentePostcode.text = temp.adres.gemeente + " " + temp.adres.postcode.description
        
        let coordinate:CLLocationCoordinate2D = temp.gps
        let annotation:MijnAnnotation = MijnAnnotation(coordinate: coordinate , title: temp.naam)
        
        self.MijnMap.addAnnotation(annotation)
        self.MijnMap.selectAnnotation(annotation, animated: true)        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        let center = CLLocationCoordinate2D(latitude: (temp.coordinate.latitude)!, longitude: (temp.coordinate.longitude)!)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
        
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
