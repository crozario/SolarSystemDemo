//
//  HomeView.swift
//  SolarSystemDemo
//
//  Created by Crossley Rozario on 2/26/24.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var viewModel: HomeViewModel
    @State private var showingAstronomicalObjectDetailView = false
    @State private var selectedAstronomicalObject: AstronomicalObject? = nil
    
    let columns = [GridItem(.adaptive(minimum: 300, maximum: 300), spacing: 10)]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 10){
                ForEach(viewModel.astronomicalObjects, id: \.id) { astronomicalObject in
                    AstronomicalObjectView(astronomicalObject: astronomicalObject)
                        .onTapGesture {
                            selectedAstronomicalObject = astronomicalObject
                            showingAstronomicalObjectDetailView.toggle()
                        }
                }
            }
        }
        .sheet(isPresented: $showingAstronomicalObjectDetailView) {
            AstronomicalObjectDetailView(astronomicalObject: $selectedAstronomicalObject)
        }
    }
}

//#Preview {
//    HomeView()
//}
