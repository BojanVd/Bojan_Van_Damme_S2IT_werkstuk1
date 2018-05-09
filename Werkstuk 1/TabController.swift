//
//  TabController.swift
//  Werkstuk 1
//
//  Created by Stan Van Damme on 09/05/2018.
//  Copyright © 2018 VAN DAMME Bojan (s). All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class TabController: UITabBarController {
    let coorSteve = CLLocationCoordinate2D(latitude: 39.545179, longitude: -76.827946)
    let coorNatasha = CLLocationCoordinate2D (latitude: 37.899604, longitude: -79.113103)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
