//
//  coordinator.swift
//  NoSleep
//
//  Created by villerot justin on 16/03/2023.
//

import Foundation

import MapKit

final class Coordinator: NSObject, MKMapViewDelegate {
    var control: MapView
    
    init(_ control: MapView) {
        self.control = control
    }
    
    
}
