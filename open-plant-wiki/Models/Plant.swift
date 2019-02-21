//
//  Plant.swift
//  Open Plant Wiki
//
//  Created by Mohammad Ashour on 2019-02-19.
//  Copyright © 2019 Mohammad Ashour. All rights reserved.
//

import UIKit

class Plant {
    let commonName: String!
    let scientificName: String!
    let maxGrowthInCentimeters: Float!
    let description: String!
    let image: UIImage!
    
    init(commonName: String, scientificName: String, maxGrowthInCentimeters: Float, description: String, image: UIImage) {
        self.commonName = commonName
        self.scientificName = scientificName
        self.maxGrowthInCentimeters = maxGrowthInCentimeters
        self.description = description
        self.image = image
    }
}

let plants = [
    Plant(commonName: "Amaryllis", scientificName: "Hippeastrum", maxGrowthInCentimeters: 75,
          description: "Bulb flowering type plants that produce a cluster of attractive trumpet like flowers in different color variations.", image: #imageLiteral(resourceName: "amaryllis")),
    
    Plant(commonName: "African Violet", scientificName: "Saintpaulia", maxGrowthInCentimeters: 6.29,
          description: "African violet care information guide: Belonging to the Saintpaulia Genus with many species. Growing conditions, possible problems, pictures and description.", image: #imageLiteral(resourceName: "african-violet")),
    
    Plant(commonName: "Beach Spider Lily", scientificName: "Hymenocallis littoralis",
          maxGrowthInCentimeters: 91.44,
          description: "This amazing bulb based plant \"beach spider lily\" enjoys environments that are downright aquatic and easy to maintain.", image: #imageLiteral(resourceName: "beach-spider-lily")),
    
    Plant(commonName: "Bird of Paradise", scientificName: "Strelitzia Reginae",
          maxGrowthInCentimeters: 182.88,
          description: "The Bird of Paradise is a delightfully easy to care for plant that enjoys warm, balmy days year round.", image: #imageLiteral(resourceName: "bird-of-paradise")),
    
    Plant(commonName: "Chinese Evergreen", scientificName: "A. commutatum", maxGrowthInCentimeters: 13,
          description: "With its picky watering and light demands, the coral bead plant has proven difficult for beginner house plant growers.", image: #imageLiteral(resourceName: "coral-bead")),
    
    Plant(commonName: "Coral Bead", scientificName: "Nertera granadensis", maxGrowthInCentimeters: 91.44,
          description: "Grown primarily for the attractive leathery leaves. ", image: #imageLiteral(resourceName: "chinese-evergreen")),
]
