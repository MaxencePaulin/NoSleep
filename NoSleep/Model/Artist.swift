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
        Artist(photo: "photo" , firstname:  "Johnny" , lastname: "Hallyday" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "photo" , firstname:  "Johnny2" , lastname: "Hallyday2" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "photo" , firstname:  "Johnny3" , lastname: "Hallyday3" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "photo" , firstname:  "Johnny4" , lastname: "Hallyday4" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "photo" , firstname:  "Johnny5" , lastname: "Hallyday5" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "photo" , firstname:  "Johnny6" , lastname: "Hallyday6" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "photo" , firstname:  "Johnny7" , lastname: "Hallyday7" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "photo" , firstname:  "Johnny8" , lastname: "Hallyday8" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "photo" , firstname:  "Johnny9" , lastname: "Hallyday9" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "photo" , firstname:  "Johnny10" , lastname: "Hallyday10" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "photo" , firstname:  "Johnny11" , lastname: "Hallyday11" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "photo" , firstname:  "Johnny12" , lastname: "Hallyday12" ,  info: "chanteur qui chante " , style: "rock" , age: 90 )
        
    ]
}
