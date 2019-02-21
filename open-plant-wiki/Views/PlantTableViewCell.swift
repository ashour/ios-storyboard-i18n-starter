//
//  PlantTableViewCell.swift
//  Open Plant Wiki
//
//  Created by Mohammad Ashour on 2019-02-20.
//  Copyright © 2019 Mohammad Ashour. All rights reserved.
//

import UIKit

class PlantTableViewCell: UITableViewCell {

    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    @IBOutlet weak var commonNameLabel: UILabel!
    
    @IBOutlet weak var scientificNameLabel: UILabel!
    
    func updateUI(with plant: Plant) {
        thumbnailImageView.image = plant.image
        commonNameLabel.text = plant.commonName
        scientificNameLabel.text = plant.scientificName
    }

}
