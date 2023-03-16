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
        HStack{
            Image(artist.photo)
                .resizable()
                .scaledToFit()
                .frame(width: 60)
                .cornerRadius(20)
                .padding(.leading,20)
            Spacer()
            VStack {
                Text(artist.firstname)
                    .padding(2)
                    .font(.system(size: 33))
                    .font(.headline)
                    
                    
                Text(artist.lastname)
                    .padding(2)
                    .font(.system(size: 33))
                    .font(.headline)
            }
        }
    }
}
    

struct RowArtistView_Previews: PreviewProvider {
    static var previews: some View {
        RowArtistView(artist: Artist.artists[0])
    }
}
