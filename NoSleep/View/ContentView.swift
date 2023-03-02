//
//  ContentView.swift
//  NoSleep
//
//  Created by user236378 on 02/03/2023.
//

import SwiftUI

struct ContentView: View {
    
    init() {
            //Use this if NavigationBarTitle is with Large Font
            UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color("ambersae"))]

            //Use this if NavigationBarTitle is with displayMode = .inline
            UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Color("ambersae"))]
        }
    
    var body: some View {
        TabView {
            HomeView()
            MapView()
            ArtistsView()
            PlanningView()
            PrestatairesView()
        }
        .foregroundColor(Color("ambersae"))
        .accentColor(Color("ambersae"))
        .toolbarColorScheme(.dark, for: .tabBar)
        .colorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ArtistViewModel())
    }
}
