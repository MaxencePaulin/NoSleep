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
        
        @State var selectedAnnotation: MKAnnotation?

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
            MapViewObject.delegate = self
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
            let subtitles = ["Prestataire de restauration",
                          "Prestataire de medecine",
                          "Prestataire de ventes de goodies",
                          "Prestataire de boisson",
                          "Prestataire test",
                          "Prestataire test2",
                          "Prestataire test3",
                          "Prestataire test4",
                          "Prestataire test5",
                          "Scene extérieure",
                          "Scene intérieure",
                          "Scene hybride",
                          "Grande scene",
                          "Petite scene"]
            for i in coords.indices {
                let annotation = MKPointAnnotation()
                annotation.coordinate = coords[i]
                annotation.title = titles[i]
                annotation.subtitle = subtitles[i]
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
        

        func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
            guard !(annotation is MKUserLocation) else { return nil }
            let identifier = "Pin"
            var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKMarkerAnnotationView
            if annotationView == nil {
                annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                annotationView?.canShowCallout = true
                let button = UIButton(type: .infoDark)
                annotationView?.rightCalloutAccessoryView = button
            } else {
                annotationView?.annotation = annotation
            }
            return annotationView
        }
        
        func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
            if control == view.rightCalloutAccessoryView {
                if let annotation = view.annotation {
                    let alertController = UIAlertController(title: annotation.title ?? "", message: annotation.subtitle ?? "", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)

                }
            }
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




