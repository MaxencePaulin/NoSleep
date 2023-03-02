//
//  RowPrestataireView.swift
//  NoSleep
//
//  Created by user236378 on 02/03/2023.
//

import SwiftUI

struct RowPrestataireView: View {
    var body: some View {
        HStack {
            Text("Prestataire Name")
        }
        .padding()
        .overlay {
            Capsule().stroke(Color("ambersae"))
        }
    }
}

struct RowPrestataireView_Previews: PreviewProvider {
    static var previews: some View {
        RowPrestataireView()
    }
}
