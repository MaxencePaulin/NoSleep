//
//  PrestatairesView.swift
//  NoSleep
//
//  Created by user236378 on 02/03/2023.
//

import SwiftUI

struct PrestatairesView: View {
    var body: some View {
        NavigationStack {
            RowPrestataireView()
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
    }
}
