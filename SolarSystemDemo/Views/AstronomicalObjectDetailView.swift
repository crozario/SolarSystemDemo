//
//  AstronomicalObjectDetailView.swift
//  SolarSystemDemo
//
//  Created by Crossley Rozario on 2/27/24.
//

import SwiftUI
import SplineRuntime

struct AstronomicalObjectDetailView: View {
    let astronomicalObject: AstronomicalObject
    let localObjectURL: URL
    
    init(astronomicalObject: AstronomicalObject) {
        self.astronomicalObject = astronomicalObject
        self.localObjectURL = Bundle.main.url(forResource: astronomicalObject.name.lowercased(), withExtension: "splineswift")!
    }
    
    var body: some View {
        VStack {
            try? SplineView(sceneFileURL: localObjectURL)
                .ignoresSafeArea(.all)
                .frame(height: 400)
            
            VStack {
                Text(astronomicalObject.name)
                    .font(.title.bold())
            }
            .padding()
            
            Spacer()
        }
    }
}
        // let url = Bundle.main.url(forResource: "scene", withExtension: "splineswift")!
struct AstronomicalObjectDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let earthObject = AstronomicalObjectService().fetchAstronomicalObjectService()[0]
        
        AstronomicalObjectDetailView(astronomicalObject: earthObject)
    }

}
