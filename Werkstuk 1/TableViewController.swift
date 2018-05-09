//
//  TableViewController.swift
//  Werkstuk 1
//
//  Created by VAN DAMME Bojan (s) on 09/05/2018.
//  Copyright © 2018 VAN DAMME Bojan (s). All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class TableViewController: UITableViewController {
    var personen = [Persoon]()
    
    //var personen = ["Amber Sannen", "Bojan Van Damme", "Annelies Van Minsel"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        let adresSteveRogers = Adres(straat: "Captainstraat", huisnummer: 1, postcode: 2000, gemeente: "New York")
        let adresNatashaRomanoff = Adres(straat: "Widowlaan", huisnummer: 20, postcode: 3550, gemeente: "Las Vegas")
        
        personen.append(Persoon(naam: "Rogers", voornaam: "Steve", foto: UIImage(named: "Steve")!, adres: adresSteveRogers, gps: CLLocationCoordinate2D (latitude: 39.545179, longitude: -76.827946), telefoonnummer: 1207))
        personen.append(Persoon(naam: "Romanoff", voornaam: "Natasha", foto: UIImage(named: "Natasha")!,adres: adresNatashaRomanoff, gps: CLLocationCoordinate2D (latitude: 37.899604, longitude: -79.113103), telefoonnummer: 1234))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return personen.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        // Configure the cell...
        let persoon = personen[indexPath.row]
        
        cell.textLabel?.text = persoon.naam + " " + persoon.voornaam
        cell.detailTextLabel?.text = persoon.telefoonnummer.description
        cell.imageView?.image = persoon.foto

        return cell
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let nextVC = segue.destination as? ItemViewController
        {
            let indexPath = self.tableView.indexPathForSelectedRow!
            
            nextVC.temp = self.personen[indexPath.row]
        }
        
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
}