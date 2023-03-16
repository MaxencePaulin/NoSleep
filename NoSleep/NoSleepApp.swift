//
//  NoSleepApp.swift
//  NoSleep
//
//  Created by user236378 on 02/03/2023.
//

import SwiftUI

@main
struct NoSleepApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ArtistViewModel())
                .environmentObject(ConcertViewModel())
        }
    }
}
