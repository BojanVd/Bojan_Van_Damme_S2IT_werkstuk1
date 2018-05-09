//
//  ItemViewController.swift
//  Werkstuk 1
//
//  Created by VAN DAMME Bojan (s) on 09/05/2018.
//  Copyright © 2018 VAN DAMME Bojan (s). All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {
    
    var temp = Persoon()

    @IBOutlet weak var VolledigeNaam: UILabel!
    @IBOutlet weak var PersoonFoto: UIImageView!
    @IBOutlet weak var GSMNummer: UILabel!
    @IBOutlet weak var StraatHuisnummer: UILabel!
    @IBOutlet weak var GemeentePostcode: UILabel!
    
    @IBAction func transformImage(_ sender: UIPinchGestureRecognizer) {
        self.PersoonFoto.transform =  CGAffineTransform(scaleX: sender.scale, y: sender.scale)
        //sender.scale = 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.VolledigeNaam.text = temp.naam + " " + temp.voornaam
        self.PersoonFoto.image = temp.foto
        self.GSMNummer.text = temp.telefoonnummer.description
        self.StraatHuisnummer.text = temp.adres.straat + " " + temp.adres.huisnummer.description
        self.GemeentePostcode.text = temp.adres.gemeente + " " + temp.adres.postcode.description
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
