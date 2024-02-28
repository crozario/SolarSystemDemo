//
//  HomeViewModel.swift
//  SolarSystemDemo
//
//  Created by Crossley Rozario on 2/26/24.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var astronomicalObjects = [AstronomicalObject]()
    
    let astronomicalObjectService = AstronomicalObjectService()
    
    init() {
        self.astronomicalObjects = astronomicalObjectService.fetchAstronomicalObjectService()
    }
}
