//
//  RowPrestataireView.swift
//  NoSleep
//
//  Created by user236378 on 02/03/2023.
//

import SwiftUI

struct RowPrestataireView: View {
    
    var presta: Prestataire
    @State private var showingSheet = false
    
    var body: some View {
        HStack{
            Button {
                showingSheet.toggle()
            } label: {
                HStack{
                    Image(presta.photo)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                        .cornerRadius(20)
                        .padding(.leading,10)
                    Spacer()
                    Text(presta.type)
                        .padding([.trailing ,.leading] , 5)
                        .padding([.bottom ,.top] , 1)
                        .font(.headline)
                        .foregroundColor(Color("ambersae"))
                    Spacer()
                        Text(presta.name)
                            .padding(.trailing , 30)
                            .padding(.leading , 10)
                            .padding([.bottom ,.top] , 1)
                            .font(.headline)
                            .foregroundColor(Color("ambersae"))
                        
                        
                        
                }
            }
            .sheet(isPresented: $showingSheet) {
                PrestataireSheetView(presta: presta)
                    .colorScheme(.dark)
            }
            
        }
    }
}
        
struct PrestataireSheetView: View {
    @Environment(\.dismiss) var dismiss
    var presta :Prestataire

    var body: some View {
        //Artist(photo: "photo1" , firstname:  "Jonny" , lastname: "Hallyday" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        
        NavigationView {
            VStack {
                Image(presta.photo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350)
                    .cornerRadius(20)
                    .padding(.top)
                Spacer()
                
                Text("Type de Stand : " + presta.type)
                    .padding(.leading,70)
                    .foregroundColor(Color("ambersae"))
                    .frame(maxWidth: .infinity, alignment: .leading)

                Spacer()
                
                Text("Biographie : " + presta.info)
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
                    Text(presta.name)
                        .font(.title)
                        .foregroundColor(Color("ambersae"))
                }
            }

            
        }
        

    }

}


    

struct RowPrestatireView_Previews: PreviewProvider {
    static var previews: some View {
        RowPrestataireView(presta: Prestataire.prestataire[0])
    }
}
