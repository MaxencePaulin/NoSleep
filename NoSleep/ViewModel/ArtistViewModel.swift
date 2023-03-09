//
//  ArtistViewModel.swift
//  NoSleep
//
//  Created by user236378 on 02/03/2023.
//

import Foundation

class ArtistViewModel: ObservableObject {
    @Published var artists: [Artist] = []
    
    init() {
        getArtists()
    }
    
    func getArtists() {
        artists.append(contentsOf: Artist.artists)
    }
    
    
}
