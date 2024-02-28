//
//  AstronomicalObjectDetailView.swift
//  SolarSystemDemo
//
//  Created by Crossley Rozario on 2/27/24.
//

import SwiftUI
import SplineRuntime

struct AstronomicalObjectDetailView: View {
    @Binding var astronomicalObject: AstronomicalObject?
    
    var body: some View {
        if let astronomicalObject = astronomicalObject, let url = astronomicalObject.getAstronomicalObjectURL {
            VStack {
                try? SplineView(sceneFileURL: url)
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
}
