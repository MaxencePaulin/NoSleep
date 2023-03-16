//
//  PlanningView.swift
//  NoSleep
//
//  Created by user236378 on 02/03/2023.
//

import SwiftUI

struct PlanningView: View {
    
    @EnvironmentObject var data: ConcertViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Planning")
                    .font(.title)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        ForEach(data.concerts) { concert in
                            ConcertCellView(concert: concert)
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
            .tabItem {
                Image(systemName: "calendar.badge.clock")
                Text("Planning")
            }
    }
}

struct PlanningView_Previews: PreviewProvider {
    static var previews: some View {
        PlanningView()
            .environmentObject(ConcertViewModel())
    }
}

struct ConcertCellView: View {
    let concert: Concert
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(concert.date)
                .font(.headline)
            Text(concert.day)
                .font(.headline)
            Text(concert.clock)
                .font(.subheadline)
            Text(concert.artist)
                .font(.headline)
            Text(concert.scene)
                .font(.subheadline)
        }
        .frame(width: 300, height: 150)
        .padding()
        .background(Color.white.opacity(0.1))
        .foregroundColor(Color("ambersae"))
        .cornerRadius(8)
        .shadow(radius: 4)
    }
}
