//
//  PlanningView.swift
//  NoSleep
//
//  Created by user236378 on 02/03/2023.
//

import SwiftUI

struct PlanningView: View {
    var body: some View {
        NavigationView {
            Text("Planning")
                .navigationTitle("Planning")
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
    }
}
