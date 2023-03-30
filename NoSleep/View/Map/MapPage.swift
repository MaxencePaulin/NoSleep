//
//  MapView.swift
//  NoSleep
//
//  Created by user236378 on 02/03/2023.
//

import SwiftUI
import MapKit


struct MapPage: View {

    
    var body: some View {
        NavigationStack {
            MapView()
                .navigationTitle("Carte Intéractive")
        }
            .tabItem {
                Image(systemName: "map")
                Text("Carte")
            }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapPage()
    }
}
