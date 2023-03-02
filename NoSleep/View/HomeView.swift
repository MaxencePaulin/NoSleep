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
            //LYON 22.07.23-26.07.23
            Text("LYON  22.07.23-26.07.23").font(.custom("Inter Bold", size: 35))
                .navigationTitle("No Sleep")     
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
