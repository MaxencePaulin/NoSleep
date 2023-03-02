//
//  Artist.swift
//  NoSleep
//
//  Created by user236378 on 02/03/2023.
//

import Foundation

struct Artist : Identifiable{
    var id : Int
    var photo : String
    var name : String
    var prename : String
    var info : String
    var style : String
    var age : Int
    
    
    static var dataArtist = [
    Artist(id: 1 ,  photo: "PATH/photo" , name: "Hallyday" , prename:  "Jonny" , info: "chanteur qui chante " , style: "rock" , age: 90 )
    
    ]
}
