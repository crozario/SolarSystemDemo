//
//  AstronomicalObjectService.swift
//  SolarSystemDemo
//
//  Created by Crossley Rozario on 2/26/24.
//

import Foundation

class AstronomicalObjectService {
    func fetchAstronomicalObjectService() -> [AstronomicalObject] {
        let astronomicalObjects = [
            AstronomicalObject(name: "Earth", imageName: "earth_pic"),
            AstronomicalObject(name: "Mars", imageName: "mars_pic"),
            AstronomicalObject(name: "Venus", imageName: "venus_pic"),
            AstronomicalObject(name: "Jupiter", imageName: "jupiter_pic"),
            AstronomicalObject(name: "Mercury", imageName: "mercury_pic"),
            AstronomicalObject(name: "Neptune", imageName: "neptune_pic"),
            AstronomicalObject(name: "Uranus", imageName: "uranus_pic"),
            AstronomicalObject(name: "Saturn", imageName: "saturn_pic"),
            AstronomicalObject(name: "Sun", imageName: "sun_pic"),
            AstronomicalObject(name: "Moon", imageName: "moon_pic")
        ]
        
        return astronomicalObjects
    }
}
