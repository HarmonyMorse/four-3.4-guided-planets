//
//  PlanetCollectionViewCell.swift
//  Planets
//
//  Created by Harm on 4/13/23.
//  Copyright © 2023 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    
    var planet: Planet? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        
        guard let planet = planet else { return }
        
        imageView.image = planet.image
        textLabel.text = planet.name
        
    }
    
}
