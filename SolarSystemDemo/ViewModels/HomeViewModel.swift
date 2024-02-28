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
        astronomicalObjectService.fetchAstronomicalObjects { result in
            switch result {
            case .success(let astronomicalObjects):
                DispatchQueue.main.async {
                    self.astronomicalObjects = astronomicalObjects
                }
            case .failure(let error):
                print(error)
            }
        }
    }
}
