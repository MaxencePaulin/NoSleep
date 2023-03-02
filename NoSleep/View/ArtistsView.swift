//
//  ArtistsView.swift
//  NoSleep
//
//  Created by user236378 on 02/03/2023.
//

import SwiftUI

struct ArtistsView: View {
    var body: some View {
        NavigationStack {
            Text("Artists")
                .navigationTitle("Liste des artistes")
        }
            .tabItem {
                Image(systemName: "music.note.list")
                Text("Artistes")
            }
    }
}

struct ArtistsView_Previews: PreviewProvider {
    static var previews: some View {
        ArtistsView()
    }
}
