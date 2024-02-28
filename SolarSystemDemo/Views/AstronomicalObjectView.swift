//
//  AstronomicalObjectView.swift
//  SolarSystemDemo
//
//  Created by Crossley Rozario on 2/26/24.
//

import SwiftUI
import SplineRuntime

struct AstronomicalObjectView: View {
    let astronomicalObject: AstronomicalObject
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .foregroundStyle(Color.planetBackground)
                            
            Image(astronomicalObject.imageName)
                .resizable()
                .scaledToFit()
        }
        .frame(width: 300, height: 150)
        .overlay(alignment: .topLeading) {
            Text(astronomicalObject.name)
                .font(.title.bold())
                .offset(x: 10, y: 10)
        }
        

    }
}
//    .overlay(
//        Image(systemName: "xmark.circle.fill")
//            .padding()
//            .offset(x: 10)
//            .foregroundColor(Color.theme.accent)
//            .opacity(searchText.isEmpty ? 0.0 : 1.0)
//            .onTapGesture {
//                UIApplication.shared.endEditing()
//                searchText = ""
//            }
//        ,alignment: .trailing
//    )
struct AstronomicalObjectView_Previews: PreviewProvider {
    static var previews: some View {
        let earthObject = AstronomicalObjectService().fetchAstronomicalObjectService()[0]
        
        AstronomicalObjectView(astronomicalObject: earthObject)
    }
    
}
