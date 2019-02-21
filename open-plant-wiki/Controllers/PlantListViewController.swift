//
//  PlantListViewController.swift
//  Open Plant Wiki
//
//  Created by Mohammad Ashour on 2019-02-19.
//  Copyright © 2019 Mohammad Ashour. All rights reserved.
//

import UIKit

class PlantListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let CELL_ID = "PlantCell"
    
    let SEGUE_ID = "ShowPlantDetails"
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlantDetailsViewController,
            let plant = sender as? Plant {
            destination.plant = plant
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return plants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CELL_ID, for: indexPath)
            as! PlantTableViewCell
        
        cell.updateUI(with: plants[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: SEGUE_ID, sender: plants[indexPath.row])
    }

}

