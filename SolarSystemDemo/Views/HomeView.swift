//
//  HomeView.swift
//  SolarSystemDemo
//
//  Created by Crossley Rozario on 2/26/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    
    let columns = [GridItem(.adaptive(minimum: 300, maximum: 300), spacing: 10)]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 10){
                ForEach(viewModel.astronomicalObjects, id: \.id) { astronomicalObject in
                    AstronomicalObjectView(astronomicalObject: astronomicalObject)
                }
            }
        }
    }
}

//#Preview {
//    HomeView()
//}
