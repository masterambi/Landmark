//
//  Landmark.swift
//  Landmark
//
//  Created by Ramzy Rashaun Arief on 21/04/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class Landmark {
    let image: UIImage
    let name: String
    let location: String
    let description: String
    var isVisited: Bool
    
    init(image: UIImage, name: String, location: String, description: String, isVisited: Bool = false) {
        self.image = image
        self.name = name
        self.location = location
        self.description = description
        self.isVisited = isVisited
    }
}
