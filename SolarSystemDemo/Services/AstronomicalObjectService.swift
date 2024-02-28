//
//  AstronomicalObjectService.swift
//  SolarSystemDemo
//
//  Created by Crossley Rozario on 2/26/24.
//

import Foundation

class AstronomicalObjectService {
    func fetchAstronomicalObjects(completionHandler: @escaping (Result<[AstronomicalObject], Error>) -> Void) {
        guard let url = Bundle.main.url(forResource: "astronomical_objects", withExtension: "json") else {
            return
        }
            
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    let result = try decoder.decode([AstronomicalObject].self, from: data)
                    
                    completionHandler(.success(result))
                } catch {
                    completionHandler(.failure(error))
                }
            } else if let error = error {
                completionHandler(.failure(error))
            }
        }.resume()
    }
}
