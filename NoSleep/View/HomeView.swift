//
//  HomeView.swift
//  NoSleep
//
//  Created by user236378 on 02/03/2023.
//

import SwiftUI

struct HomeView: View {
    @State private var showSheet : Bool = false
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Image("Image_Accueil")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea(.all)
                //LYON 22.07.23-26.07.23
                VStack {
                    Image("NoSleepLogo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding(.horizontal, -180)
                        .padding(.vertical, 75)
                    Spacer()
                    
                    Text("LYON \n22.07.23 - 26.07.23").font(.system(size: 40))
                        .navigationTitle("No Sleep Festival")
                        .foregroundColor(Color("ambersae"))
                        .fixedSize(horizontal: false, vertical: true)
                        .fontWeight(.bold)
                        .lineLimit(nil)
                        .padding(.vertical, 50)
                    
                    Spacer()
                    
                    Button(action: {
                        showSheet.toggle()
                    }) {
                        Text("En savoir plus")
                            .foregroundColor(Color("ambersae"))
                    }
                    .sheet(isPresented: $showSheet) {
                        InfosView()
                            .colorScheme(.dark)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical, -50)
                    .padding(.horizontal, 25)
                    
                    Spacer()
                }
                    
            }
        }
        .tabItem {
            Image(systemName: "house")
            Text("Accueil")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
