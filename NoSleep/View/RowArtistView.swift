//
//  RowPrestataireView.swift
//  NoSleep
//
//  Created by user236378 on 02/03/2023.
//

import SwiftUI

struct RowArtistView: View {
    
    var artist: Artist
    
    var body: some View {
        HStack {
            Text(artist.firstname)
                .padding()
                .overlay {
                    Capsule().stroke(Color("ambersae"))
                }
            Text(artist.lastname)
                .padding()
                .overlay{
                    Capsule().stroke(Color("ambersae"))
                }
        }
    }
}
    

struct RowArtistView_Previews: PreviewProvider {
    static var previews: some View {
        RowArtistView(artist: Artist.artists[0])
    }
}
