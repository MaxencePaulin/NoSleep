//
//  PrestatairesView.swift
//  NoSleep
//
//  Created by user236378 on 02/03/2023.
//

import SwiftUI

struct PrestatairesView: View {
    
    @EnvironmentObject var data: PrestataireViewModel
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(data.prestataires) {
                    RowPrestataireView(presta: $0)
                }
                /*équivalent à ForEach(data.artists) { artist in
                    RowPrestataireView(artist: artist)
                }*/
            }
            .navigationTitle("Liste des prestataires")
        }
            .tabItem {
                Image(systemName: "shippingbox")
                Text("Prestataires")
            }
    }
}

struct PrestatairesView_Previews: PreviewProvider {
    static var previews: some View {
        PrestatairesView()
            .environmentObject(PrestataireViewModel())
    }
}
