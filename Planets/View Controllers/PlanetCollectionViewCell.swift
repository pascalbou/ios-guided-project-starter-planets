//
//  PlanetCollectionViewCell.swift
//  Planets
//
//  Created by krikaz on 3/10/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var planetImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var planet: Planet? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        guard let planet = planet else { return }
        planetImageView.image = planet.image
        nameLabel.text = planet.name
    }
}
