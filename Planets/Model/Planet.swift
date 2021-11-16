//
//  Planet.swift
//  Planets
//
//  Created by Andrew R Madsen on 8/2/18.
//  Copyright © 2021 Bloom Institute of Technology Inc. All rights reserved.
//

import UIKit

struct Planet {
    
    var name: String
    var image: UIImage
    
    init(name: String, imageName: String) {
        self.name = name
        self.image = UIImage(named: imageName)!
    }
}
