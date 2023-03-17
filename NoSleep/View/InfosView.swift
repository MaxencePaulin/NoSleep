//
//  InfosView.swift
//  NoSleep
//
//  Created by perrin antoine on 16/03/2023.
//

import SwiftUI

struct InfosView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView {
            VStack (spacing : 0) {
                Spacer()
                HStack (spacing: 0) {
                    Image("Infos1")
                        .resizable()
                        .frame(width: 200, height: 250)
                    ZStack {
                        Rectangle()
                            .padding(.trailing, 50.0)
                            .foregroundColor(Color("ambersae"))
                            .frame(width: 200, height: 250)
                        Rectangle()
                            .padding(.leading, 50.0)
                            .frame(width: 185, height: 250)
                            .foregroundColor(Color("ambersae"))
                            .cornerRadius(20)
                        VStack {
                            Group {
                                Text("80 ARTISTES")
                                    .font(.system(size: 15))
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                Text("Plus de 80 artistes de pays différents !")
                                    .font(.system(size: 12))
                                    .foregroundColor(.black)
                            }
                            .padding(1)
                            Group {
                                Text("POUR VOTRE PLAISIR")
                                    .font(.system(size: 15))
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                Text("Un fast-food et un camping sont à votre disposition !")
                                    .font(.system(size: 12))
                                    .padding(.horizontal, 10)
                                    .foregroundColor(.black)
                            }
                            .padding(1)
                            Group {
                                Text("GARDEZ UN SOUVENIR")
                                    .font(.system(size: 15))
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                Text("Gardez un souvenir grâce à notre boutique de souvenirs et de vêtements !")
                                    .font(.system(size: 12))
                                    .padding(.horizontal, 10)
                                    .foregroundColor(.black)
                            }
                            .padding(1)
                        }
                    }
                }
                HStack {
                    ZStack {
                        Text("Les inscriptions commenceront le 10 janvier 2023. Soyez prêts !").font(.system(size: 15))
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                        
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .background(Color("sheet"))
                }
                .frame(height: 100)
                HStack (spacing: 0) {
                    ZStack {
                        Rectangle()
                            .padding(.leading, 50.0)
                            .foregroundColor(Color("ambersae"))
                            .frame(width: 150, height: 225)
                        Rectangle()
                            .padding(.trailing, 50)
                            .foregroundColor(Color("ambersae"))
                            .frame(width: 140, height: 225)
                            .cornerRadius(20)
                        VStack {
                            Group {
                                Text("LIEU")
                                    .font(.system(size: 15))
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                Text("Le Grand Bourg, 69000 LYON")
                                    .font(.system(size: 12))
                                    .padding(.horizontal, 10)
                                    .foregroundColor(.black)
                            }
                            .padding(1)
                            Group {
                                Text("CONTACT")
                                    .font(.system(size: 15))
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                Text("info@noslep-festival.com")
                                    .font(.system(size: 12))
                                    .padding(.horizontal, 10)
                                    .foregroundColor(.black)
                                Text("01 23 45 67 89")
                                    .font(.system(size: 12))
                                    .padding(.horizontal, 10)
                                    .foregroundColor(.black)
                            }
                            .padding(1)
                        }
                    }
                    Image("Infos2")
                        .resizable()
                        .frame(width: 250, height: 225)
                        .scaledToFit()
                }
                Spacer()
            }
            .background(Color("sheet"))
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("OK") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .principal){
                    Text("INFOS")
                        .font(.title)
                        .foregroundColor(Color("ambersae"))
                }
            }
        }
    }
}

struct InfosView_Previews: PreviewProvider {
    static var previews: some View {
        InfosView()
    }
}
