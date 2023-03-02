//
//  ContentView.swift
//  NoSleep
//
//  Created by user236378 on 02/03/2023.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        TabView {
            HomeView()
            MapView()
            ArtistsView()
            PlanningView()
            PrestatairesView()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
