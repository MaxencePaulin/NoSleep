//
//  ContentView.swift
//  NoSleep
//
//  Created by user236378 on 02/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView() {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("No Sleep !")
            }
            .padding()
            .navigationTitle("No Sleep")
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Text("test")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
