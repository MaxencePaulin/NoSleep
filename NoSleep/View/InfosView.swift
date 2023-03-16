//
//  InfosView.swift
//  NoSleep
//
//  Created by perrin antoine on 16/03/2023.
//

import SwiftUI

struct InfosView: View {
    var body: some View {
        VStack (spacing : 0) {
            Spacer()
            HStack (spacing: 0) {
                Image("Infos1")
                    .resizable()
                    .frame(width: 200, height: 250)
                ZStack {
                    Rectangle()
                        .foregroundColor(Color("ambersae"))
                        .frame(width: 200, height: 250)
                    VStack {
                            Group {
                                Text("80 ARTISTES")
                                    .fontWeight(.bold)
                                Text("Plus de 80 artistes de pays différents !")
                                    .font(.system(size: 12))
                            }
                            .padding(1)
                            Group {
                                Text("POUR VOTRE PLAISIR")
                                    .fontWeight(.bold)
                                Text("Un fast-food et un capming sont à votre disposition !")
                                    .font(.system(size: 12))
                            }
                            .padding(1)
                            Group {
                                Text("GARDEZ UN SOUVENIR")
                                    .fontWeight(.bold)
                                Text("Gardez un souvenir grâce à notre boutique de souvenirs et de vêtements !")
                                    .font(.system(size: 12))
                            }
                            .padding(1)
                    }
                }
            }
            HStack {
                ZStack {
                    Text("testestest")
                        .foregroundColor(.white)
                        
                }
                .frame(maxWidth: .infinity)
                .frame(height: 100)
                .background(Color.black)
            }
            .frame(height: 100)
            HStack (spacing: 0) {
                ZStack {
                    Rectangle()
                        .foregroundColor(Color("ambersae"))
                        .frame(width: 150, height: 250)
                    VStack {
                            Text("testestestestestestestestest")
                    }
                }
                Image("Infos2")
                    .resizable()
                    .frame(width: 250, height: 250)
            }
            Spacer()
        }
    }
}

struct InfosView_Previews: PreviewProvider {
    static var previews: some View {
        InfosView()
    }
}
