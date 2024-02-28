//
//  SolarSystemDemoApp.swift
//  SolarSystemDemo
//
//  Created by Crossley Rozario on 2/26/24.
//

import SwiftUI

@main
struct SolarSystemDemoApp: App {
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(viewModel)
        }
    }
}
