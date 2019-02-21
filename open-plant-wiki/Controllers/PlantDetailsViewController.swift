//
//  PlantDetailsViewController.swift
//  Open Plant Wiki
//
//  Created by Mohammad Ashour on 2019-02-19.
//  Copyright © 2019 Mohammad Ashour. All rights reserved.
//

import UIKit

class PlantDetailsViewController: UIViewController {
    
    @IBOutlet weak var plantImageView: UIImageView!
    
    @IBOutlet weak var commonNameLabel: UILabel!
    
    @IBOutlet weak var scientificNameLabel: UILabel!
    
    @IBOutlet weak var maxLengthLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    private var _plant: Plant?
    
    var plant: Plant? {
        get { return _plant }
        
        set { _plant = newValue }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let plant = plant {
            plantImageView.image = plant.image
            
            commonNameLabel.text = plant.commonName
            
            scientificNameLabel.text = plant.scientificName
            
            maxLengthLabel.text = NSString(format: "%.2f", plant.maxGrowthInCentimeters) as String
            
            descriptionLabel.text = plant.description
        }
    }

}
