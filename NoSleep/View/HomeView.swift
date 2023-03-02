//
//  HomeView.swift
//  NoSleep
//
//  Created by user236378 on 02/03/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {	
        NavigationStack {
            List {
                Text("Home")
                    .frame(height: 500)
                    .navigationTitle("No Sleep")
            }            
        }
        .tabItem {
            Image(systemName: "house")
            Text("Accueil")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
