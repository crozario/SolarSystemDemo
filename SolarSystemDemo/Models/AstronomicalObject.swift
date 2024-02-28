//
//  AstronomicalObject.swift
//  SolarSystemDemo
//
//  Created by Crossley Rozario on 2/26/24.
//

import Foundation

struct AstronomicalObject: Codable {
    let id = UUID()
    let name: String
    let imageName: String
    let description: String
    
    var getAstronomicalObjectURL: URL? {
        Bundle.main.url(forResource: self.name.lowercased(), withExtension: "splineswift")
    }
}
