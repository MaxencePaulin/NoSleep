//.overlay{
//    Capsule().stroke(Color("ambersae"))
//}
//
//  ArtistsView.swift
//  NoSleep
//
//  Created by user236378 on 02/03/2023.
//

import SwiftUI

struct ArtistsView: View {
    
    @EnvironmentObject var data: ArtistViewModel

    var body: some View {
        
        NavigationStack {
            List {
                ForEach(data.artists) {
                    RowArtistView(artist: $0)
                }
                /*équivalent à ForEach(data.artists) { artist in
                    RowPrestataireView(artist: artist)
                }*/
            }
            .navigationTitle("Liste des artistes")
        }
            .tabItem {
                Image(systemName: "music.note.list")
                Text("Artiste")
            }
    }
}

struct ArtistsView_Previews: PreviewProvider {
    static var previews: some View {
        ArtistsView()
            .environmentObject(ArtistViewModel())
    }
}
