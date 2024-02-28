//
//  PreviewProvider.swift
//  SolarSystemDemo
//
//  Created by Crossley Rozario on 2/27/24.
//

import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
}

class DeveloperPreview {
    static let instance = DeveloperPreview()
    
    private init() { }
    
    let astronomicalObject = AstronomicalObject(name: "Earth", imageName: "earth_pic", description: "Earth is the third planet from the Sun and the only astronomical object known to harbor life. 70.8% of the Earth's surface is covered in liquid water and the remaining 29.2% is dry land. Most of the Earth's water is concentrated in a global ocean and ice sheets. Many parts of Earth's land is somewhat humid and covered by vegetation. With a mean radius of 6371.0 km(3958.8 mi), Earth is the largest, densest and most massive terrestrial planet in the Solar System. Earth has one large natural satellite: the Moon.")
}
