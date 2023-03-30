//
//  MapPopupView.swift
//  NoSleep
//
//  Created by user236378 on 30/03/2023.
//

import SwiftUI

struct MapPopupView: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.headline)
            Text(subtitle)
                .font(.subheadline)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(8)
        .shadow(radius: 4)
    }
}
