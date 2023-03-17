//
//  MapViewRepresentable.swift
//  NoSleep
//
//  Created by villerot justin on 16/03/2023.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    @State var coordinateRegion: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 45.782618526, longitude: 4.877519645284538), latitudinalMeters: 2000, longitudinalMeters: 2000)

    func makeUIView(context: Context) -> MKMapView {
        // Map
        
        let map = MKMapView()
        //map.setCenter(CLLocationCoordinate2D(latitude: 45.725833, longitude: 4.666111), animated: true)
        map.setRegion(coordinateRegion, animated: true)
        map.delegate = context.coordinator
        
        // Annotation
        
        addPin(latitude: 45.791113, longitude: 4.880408, tittle: "Prestataire 1", map: map)
        addPin(latitude: 45.789811, longitude: 4.879603, tittle: "Prestataire 2", map: map)
        addPin(latitude: 45.789318, longitude: 4.878488, tittle: "Prestataire 3", map: map)
        addPin(latitude: 45.788136, longitude: 4.879324, tittle: "Prestataire 4", map: map)
        addPin(latitude: 45.786729, longitude: 4.875226, tittle: "Prestataire 5", map: map)
        addPin(latitude: 45.786939, longitude: 4.872329, tittle: "Prestataire 6", map: map)
        addPin(latitude: 45.785771, longitude: 4.869797, tittle: "Prestataire 7", map: map)
        addPin(latitude: 45.786265, longitude: 4.866278, tittle: "Prestataire 8", map: map)
        addPin(latitude: 45.785427, longitude: 4.865248, tittle: "Prestataire 9", map: map)
        
        
        addPin(latitude: 45.790515, longitude: 4.879646, tittle: "Scene 1", map: map)
        addPin(latitude: 45.788315, longitude: 4.878380, tittle: "Scene 2", map: map)
        addPin(latitude: 45.787208, longitude: 4.874325, tittle: "Scene 3", map: map)
        addPin(latitude: 45.786101, longitude: 4.868810, tittle: "Scene 4", map: map)
        addPin(latitude: 45.786116, longitude: 4.865141, tittle: "Scene 5", map: map)
        
        return map
    }
    
    func addPin(latitude: Double, longitude: Double, tittle: String, map: MKMapView) {
        let annotation = MKPointAnnotation()
        let centerCoordinate = CLLocationCoordinate2D(latitude: latitude, longitude:longitude)
        annotation.coordinate = centerCoordinate
        annotation.title = tittle
        map.addAnnotation(annotation)
    }
    
    func mapView(_ map: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: "MyMarker")
        annotationView.glyphTintColor = UIColor.black
        let tittle = annotation.title?.debugDescription
        if (tittle!.contains("Scene")) {
            annotationView.markerTintColor = .red
            //annotationView.glyphImage = UIImage(named: "liberty")
        } else {
            annotationView.markerTintColor = .green
        }
        return annotationView
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
        
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        
        
    }
}


struct MapLocation: Identifiable {
    
    let id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
