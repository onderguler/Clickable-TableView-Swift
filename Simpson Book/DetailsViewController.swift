//
//  DetailsViewController.swift
//  Simpson Book
//
//  Created by önder güler on 1.06.2019.
//  Copyright © 2019 önder güler. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var imageDetails: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var occupationLabel: UILabel!
    
    var selectedSimpson = Simpson()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedSimpson.name
        occupationLabel.text = selectedSimpson.occupation
        imageDetails.image = selectedSimpson.image
        
       
    }
    
}
