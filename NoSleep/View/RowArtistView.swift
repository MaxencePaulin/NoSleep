//
//  RowPrestataireView.swift
//  NoSleep
//
//  Created by user236378 on 02/03/2023.
//

import SwiftUI

struct RowArtistView: View {
    
    var artist: Artist
    @State private var showingSheet = false
    
    var body: some View {
        HStack{
            Button {
                showingSheet.toggle()
            } label: {
                HStack{
                    Image(artist.photo)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60)
                        .cornerRadius(20)
                        .padding(.leading,45)
                    Spacer()
                    VStack {
                        Text(artist.firstname)
                            .padding([.trailing ,.leading] , 30)
                            .padding([.bottom ,.top] , 1)
                            .font(.headline)
                            .foregroundColor(Color("ambersae"))
                        
                        
                        Text(artist.lastname)
                            .padding([.trailing ,.leading] , 30)
                            .padding([.bottom ,.top] , 1)
                            .font(.headline)
                            .foregroundColor(Color("ambersae"))
                    }
                }
            }
            .sheet(isPresented: $showingSheet) {
                ArtisteSheetView(artist: artist)
                    .colorScheme(.dark)
            }
            
        }
    }
}
        
struct ArtisteSheetView: View {
    @Environment(\.dismiss) var dismiss
    var artist :Artist

    var body: some View {
        //Artist(photo: "photo1" , firstname:  "Jonny" , lastname: "Hallyday" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        
        NavigationView {
            VStack {
                Image(artist.photo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                    .cornerRadius(20)
                    .padding(.top)
                Spacer()
                
                Text("AGE : " + String(artist.age))
                    .padding(.leading,70)
                    .foregroundColor(Color("ambersae"))
                    .frame(maxWidth: .infinity, alignment: .leading)

                Spacer()
                
                Text("Style de Musique : " + artist.style)
                    .padding(.leading,70)
                    .foregroundColor(Color("ambersae"))
                    .frame(maxWidth: .infinity, alignment: .leading)

                Spacer()
                
                Text("Biographie : " + artist.info)
                    .padding(.leading,70)
                    .foregroundColor(Color("ambersae"))
                    .frame(maxWidth: .infinity, alignment: .leading)

                    
                Spacer()
                
            }
            //.foregroundColor(Color("ambersae"))
            //.accentColor(Color("ambersae"))
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("OK") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .principal){
                    Text(artist.firstname + " " + artist.lastname)
                        .font(.title)
                        .foregroundColor(Color("ambersae"))
                }
            }

            
        }
        

    }

}


    

struct RowArtistView_Previews: PreviewProvider {
    static var previews: some View {
        RowArtistView(artist: Artist.artists[0])
    }
}
