//
//  PlanetsCollectionViewController.swift
//  Planets
//
//  Created by krikaz on 3/10/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetsCollectionViewController: UICollectionViewController {
    
    let planetController = PlanetController()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        collectionView.reloadData()
    }

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return planetController.planets.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlanetCell", for: indexPath) as? PlanetCollectionViewCell else { return UICollectionViewCell() }
    
        let planet = planetController.planets[indexPath.item]
        
        // This will trigger the didSet and call `updateViews()` for us
        cell.planet = planet
    
        return cell
    }

}
