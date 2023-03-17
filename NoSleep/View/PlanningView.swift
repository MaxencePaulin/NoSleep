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
                            Divider()
                                .frame(maxWidth: 250)
                                .frame(height:  1)
                                .overlay(Color("ambersae"))
                                
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
        HStack {
            Text(concert.artist)
                .font(.headline)
                .frame(maxWidth: 100)
            Divider()
                .frame(maxWidth: 50)
                .frame(height: 100 )
                .frame(width: 2)
                .overlay(Color("ambersae"))
            VStack{
                Text(concert.date)
                    .font(.headline)
                 Text(concert.day)
                 .font(.headline)
                Text(concert.clock)
                .font(.subheadline)
                 Text(concert.scene)
                .font(.subheadline)
                
            }
            .padding([ .leading] , 15)
            //.frame(width: 300, height: 150)
            //.padding()
            //     .foregroundColor(Color("ambersae"))
            //     .cornerRadius(8)
            //   .shadow(radius: 4)
            
            
        }
        .frame(width: 300, height: 150)
        .padding()
        .foregroundColor(Color("ambersae"))
        .cornerRadius(8)
        //.shadow(color: Color("ambersae"), radius: 4 , x:5 , y:5)
    }
    
}
