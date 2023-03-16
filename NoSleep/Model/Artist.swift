//
//  Artist.swift
//  NoSleep
//
//  Created by user236378 on 02/03/2023.
//

import Foundation

struct Artist : Identifiable{
    var id = UUID()
    var photo : String
    var firstname : String
    var lastname : String
    var info : String
    var style : String
    var age : Int
    
    
    static var artists = [
        Artist(photo: "photo" , firstname:  "Jonny" , lastname: "Hallyday" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "photo" , firstname:  "Jonny2" , lastname: "Hallyday2" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "photo" , firstname:  "Jonny3" , lastname: "Hallyday3" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "photo" , firstname:  "Jonny4" , lastname: "Hallyday4" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "photo" , firstname:  "Jonny5" , lastname: "Hallyday5" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "photo" , firstname:  "Jonny6" , lastname: "Hallyday6" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "photo" , firstname:  "Jonny7" , lastname: "Hallyday7" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "photo" , firstname:  "Jonny8" , lastname: "Hallyday8" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "photo" , firstname:  "Jonny9" , lastname: "Hallyday9" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "photo" , firstname:  "Jonny10" , lastname: "Hallyday10" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "photo" , firstname:  "Jonny11" , lastname: "Hallyday11" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "photo" , firstname:  "Jonny12" , lastname: "Hallyday12" ,  info: "chanteur qui chante " , style: "rock" , age: 90 )
        
    ]
}
