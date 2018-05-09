//
//  Persoon.swift
//  Werkstuk 1
//
//  Created by VAN DAMME Bojan (s) on 08/05/2018.
//  Copyright © 2018 VAN DAMME Bojan (s). All rights reserved.
//

import Foundation
import UIKit
import MapKit


class Persoon {
    var naam: String
    var voornaam: String
    var foto: UIImage
    var adres: Adres
    var gps: CCLocationCoordinate2D
    var telefoonnummer: Int
    
    init(){
        naam = ""
        voornaam = ""
        foto = UIImage()
        adres = Adres()
        gps = CLLocationCoordinate2D()
        telefoonnummer = 0
    }
    
    init(naam: String, voornaam: String, foto:UIImage, adres: Adres, telefoonnummer: Int) {
        self.naam = naam
        self.voornaam = voornaam
        self.foto = foto
        self.telefoonnummer = telefoonnummer
        self.adres = adres
    }
}
