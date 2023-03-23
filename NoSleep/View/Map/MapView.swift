//
//  MapViewRepresentable.swift
//  NoSleep
//
//  Created by villerot justin on 16/03/2023.
//

import SwiftUI
import UIKit
import MapKit

struct MapView: UIViewControllerRepresentable {
    
    class ViewController: UIViewController, MKMapViewDelegate {

        private var MapViewObject: MKMapView = {
            let map = MKMapView()
            map.overrideUserInterfaceStyle = .dark
            return map
        }()
        override func viewDidLoad() {
            super.viewDidLoad()
            view.addSubview(MapViewObject)
            setMapConstraints()
            configureMap()
        }
        
        private func setMapConstraints() {
            view.addSubview(MapViewObject)
            MapViewObject.translatesAutoresizingMaskIntoConstraints = false
            MapViewObject.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
            MapViewObject.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
            MapViewObject.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
            MapViewObject.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
            
        }
        
        func configureMap() {
            let coordinateRegion: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 45.782618526, longitude: 4.877519645284538), latitudinalMeters: 2000, longitudinalMeters: 2000)
            MapViewObject.setRegion(coordinateRegion, animated: true)
            self.placePins()
        }
        
        func placePins() {
            let coords = [CLLocationCoordinate2D(latitude: 45.791113, longitude: 4.880408),
                          CLLocationCoordinate2D(latitude: 45.789811, longitude: 4.879603),
                          CLLocationCoordinate2D(latitude: 45.789318, longitude: 4.878488),
                          CLLocationCoordinate2D(latitude: 45.788136, longitude: 4.879324),
                          CLLocationCoordinate2D(latitude: 45.786729, longitude: 4.875226),
                          CLLocationCoordinate2D(latitude: 45.786939, longitude: 4.872329),
                          CLLocationCoordinate2D(latitude: 45.785771, longitude: 4.869797),
                          CLLocationCoordinate2D(latitude: 45.786265, longitude: 4.866278),
                          CLLocationCoordinate2D(latitude: 45.785427, longitude: 4.865248),
                          CLLocationCoordinate2D(latitude: 45.790515, longitude: 4.879646),
                          CLLocationCoordinate2D(latitude: 45.788315, longitude: 4.878380),
                          CLLocationCoordinate2D(latitude: 45.787208, longitude: 4.874325),
                          CLLocationCoordinate2D(latitude: 45.786101, longitude: 4.868810),
                          CLLocationCoordinate2D(latitude: 45.786116, longitude: 4.865141)]
            let titles = ["Prestataire 1",
                          "Prestataire 2",
                          "Prestataire 3",
                          "Prestataire 4",
                          "Prestataire 5",
                          "Prestataire 6",
                          "Prestataire 7",
                          "Prestataire 8",
                          "Prestataire 9",
                          "Scene 1",
                          "Scene 2",
                          "Scene 3",
                          "Scene 4",
                          "Scene 5"]
            for i in coords.indices {
                let annotation = MKPointAnnotation()
                annotation.coordinate = coords[i]
                annotation.title = titles[i]
                MapViewObject.addAnnotation(annotation)
            }
        }
        
        func MapViewObject(_ MapViewObject: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
            print("mapWiew annotation view function")
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
    }

    
    typealias UIViewControllerType = ViewController
    
    func makeUIViewController(context: Context) -> ViewController {
        let vc = ViewController()
        // Return MyViewController instance
        return vc
    }
    
        
    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
        // Updates the state of the specified view controller with new information from SwiftUI.
    }
}




