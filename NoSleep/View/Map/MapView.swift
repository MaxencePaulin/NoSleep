//
//  MapViewRepresentable.swift
//  NoSleep
//
//  Created by villerot justin on 16/03/2023.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    @State var coordinateRegion: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 45.725833, longitude: 4.666111), latitudinalMeters: 1000, longitudinalMeters: 1000)

    
    func makeUIView(context: Context) -> MKMapView {
        let map = MKMapView()
        //map.setCenter(CLLocationCoordinate2D(latitude: 45.725833, longitude: 4.666111), animated: true)
        map.setRegion(coordinateRegion, animated: true)
        map.delegate = context.coordinator
        return map
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
        
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        
        
    }
}
