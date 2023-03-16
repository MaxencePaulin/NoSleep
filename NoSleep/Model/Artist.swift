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
        Artist(photo: "photo1" , firstname:  "Jonny" , lastname: "Hallyday" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "PATH/photo2" , firstname:  "Jonny2" , lastname: "Hallyday2" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "PATH/photo3" , firstname:  "Jonny3" , lastname: "Hallyday3" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "PATH/photo4" , firstname:  "Jonny4" , lastname: "Hallyday4" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "PATH/photo5" , firstname:  "Jonny5" , lastname: "Hallyday5" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "PATH/photo6" , firstname:  "Jonny6" , lastname: "Hallyday6" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "PATH/photo7" , firstname:  "Jonny7" , lastname: "Hallyday7" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "PATH/photo8" , firstname:  "Jonny8" , lastname: "Hallyday8" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "PATH/photo9" , firstname:  "Jonny9" , lastname: "Hallyday9" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "PATH/photo10" , firstname:  "Jonny10" , lastname: "Hallyday10" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "PATH/photo11" , firstname:  "Jonny11" , lastname: "Hallyday11" ,  info: "chanteur qui chante " , style: "rock" , age: 90 ),
        Artist(photo: "PATH/photo12" , firstname:  "Jonny12" , lastname: "Hallyday12" ,  info: "chanteur qui chante " , style: "rock" , age: 90 )
        
    ]
}
