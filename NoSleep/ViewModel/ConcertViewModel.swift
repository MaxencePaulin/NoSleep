//
//  ConcertViewModel.swift
//  NoSleep
//
//  Created by paulin maxence on 16/03/2023.
//

import Foundation

class ConcertViewModel: ObservableObject {
    @Published var concerts: [Concert] = []
    
    init() {
        getConcerts()
    }
    
    func getConcerts() {
        concerts.append(contentsOf: Concert.concerts)
    }
}
