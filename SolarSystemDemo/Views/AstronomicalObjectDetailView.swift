//
//  AstronomicalObjectDetailView.swift
//  SolarSystemDemo
//
//  Created by Crossley Rozario on 2/27/24.
//

import SwiftUI
import SplineRuntime

struct AstronomicalObjectDetailView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var astronomicalObject: AstronomicalObject?
    
    var body: some View {
        if let astronomicalObject = astronomicalObject, let url = astronomicalObject.getAstronomicalObjectURL {
            VStack {
                try? SplineView(sceneFileURL: url)
                    .ignoresSafeArea(.all)
                    .frame(height: 400)
                    .overlay(alignment: .topLeading) {
                        backButton
                            .offset(x: 15, y: 15)
                    }
                
                VStack {
                    Text(astronomicalObject.name)
                        .font(.title.bold())
                    
                    ScrollView {
                        Text(astronomicalObject.description)
                    }
                }
                .padding()
            }
        }
    }
}

extension AstronomicalObjectDetailView {
    var backButton: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(Color.secondaryBackground)
            Text("Back")
                .font(.headline)
                .foregroundStyle(.white)
        }
        .frame(width: 75, height: 40)
        .onTapGesture {
            dismiss()
        }
    }
}

struct AstronomicalObjectDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let earthObject = dev.astronomicalObject
        AstronomicalObjectDetailView(astronomicalObject: .constant(earthObject))
    }
    
}

