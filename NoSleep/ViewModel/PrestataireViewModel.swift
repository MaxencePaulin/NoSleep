//
//  PrestataireViewModel.swift
//  NoSleep
//
//  Created by laval baptiste on 17/03/2023.
//

import Foundation

class PrestataireViewModel: ObservableObject {
    @Published var prestataires: [Prestataire] = []
    
    init() {
        getPrestataire()
    }
    
    func getPrestataire() {
        prestataires.append(contentsOf: Prestataire.prestataire)
    }
    
    
}
