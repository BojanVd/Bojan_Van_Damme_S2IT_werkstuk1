//
//  Adres.swift
//  Werkstuk 1
//
//  Created by VAN DAMME Bojan (s) on 08/05/2018.
//  Copyright © 2018 VAN DAMME Bojan (s). All rights reserved.
//

import Foundation

//Aanmaken Adres klasse

class Adres {
    var straat: String
    var huisnummer: Int
    var postcode: Int
    var gemeente: String
    
    init(){
        straat = ""
        huisnummer = 0
        postcode = 0
        gemeente = ""
    }
    
    init(straat: String, huisnummer: Int, postcode: Int, gemeente: String) {
        self.straat = straat
        self.huisnummer = huisnummer
        self.postcode = postcode
        self.gemeente = gemeente
    }
}
