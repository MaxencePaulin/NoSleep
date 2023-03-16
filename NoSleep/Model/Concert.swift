//
//  Concert.swift
//  NoSleep
//
//  Created by user236378 on 02/03/2023.
//

import Foundation

var artists = Artist.artists
var scenes = SceneModel.scenes

struct Concert : Identifiable{
    var id = UUID()
    var artist : String
    var scene : String
    var date : String
    var clock: String
    var day: String
    
    
    static var concerts = [
        Concert(artist: "\(artists[0].firstname) \(artists[0].lastname)", scene: scenes[0].name, date: "22-07-2023", clock:"10h-11h", day: "Samedi"),
        Concert(artist: "\(artists[1].firstname) \(artists[1].lastname)", scene: scenes[0].name, date: "22-07-2023", clock:"10h-11h", day: "Samedi"),
        Concert(artist: "\(artists[2].firstname) \(artists[2].lastname)", scene: scenes[0].name, date: "23-07-2023", clock:"10h-11h", day: "Dimanche"),
        Concert(artist: "\(artists[3].firstname) \(artists[3].lastname)", scene: scenes[0].name, date: "23-07-2023", clock:"10h-11h", day: "Dimanche"),
        Concert(artist: "\(artists[4].firstname) \(artists[4].lastname)", scene: scenes[0].name, date: "23-07-2023", clock:"10h-11h", day: "Dimanche"),
        Concert(artist: "\(artists[5].firstname) \(artists[5].lastname)", scene: scenes[0].name, date: "24-07-2023", clock:"10h-11h", day: "Lundi"),
        Concert(artist: "\(artists[6].firstname) \(artists[6].lastname)", scene: scenes[0].name, date: "24-07-2023", clock:"10h-11h", day: "Lundi"),
        Concert(artist: "\(artists[7].firstname) \(artists[7].lastname)", scene: scenes[0].name, date: "25-07-2023", clock:"10h-11h", day: "Mardi"),
        Concert(artist: "\(artists[8].firstname) \(artists[8].lastname)", scene: scenes[0].name, date: "25-07-2023", clock:"10h-11h", day: "Mardi"),
        Concert(artist: "\(artists[9].firstname) \(artists[9].lastname)", scene: scenes[0].name, date: "25-07-2023", clock:"10h-11h", day: "Mardi"),
        Concert(artist: "\(artists[10].firstname) \(artists[10].lastname)", scene: scenes[0].name, date: "26-07-2023", clock:"10h-11h", day: "Mercredi"),
        Concert(artist: "\(artists[11].firstname) \(artists[11].lastname)", scene: scenes[0].name, date: "26-07-2023", clock:"10h-11h", day: "Mercredi")
    ]
}
