//
//  ImageViewController.swift
//  Werkstuk 1
//
//  Created by VAN DAMME Bojan (s) on 09/05/2018.
//  Copyright © 2018 VAN DAMME Bojan (s). All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    //Lege var aanmaken vr image
    var image:UIImage = UIImage()
    
    //Inladen van image element in view
    @IBOutlet weak var UIimg: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.UIimg.image = image
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
