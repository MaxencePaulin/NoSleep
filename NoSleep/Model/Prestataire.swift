//
//  Prestataire.swift
//  NoSleep
//
//  Created by user236378 on 02/03/2023.
//

import Foundation

struct Prestataire : Identifiable{
    var id = UUID()
    var photo : String
    var name : String
    var info : String
    var type : String
    
    
    static var prestataire = [
        Prestataire(photo: "photoPresta" , name:  "Chez Paul",  info: "vendeur qui vend " , type: "Nourriture" ),
        Prestataire(photo: "photoPresta" , name:  "Chez Paul",  info: "vendeur qui vend " , type: "Nourriture" ),
        Prestataire(photo: "photoPresta" , name:  "Chez Paul",  info: "vendeur qui vend " , type: "Nourriture" ),
        Prestataire(photo: "photoPresta" , name:  "Chez Paul",  info: "vendeur qui vend " , type: "Nourriture" ),
        Prestataire(photo: "photoPresta" , name:  "Chez Paul",  info: "vendeur qui vend " , type: "Nourriture" ),
        Prestataire(photo: "photoPresta" , name:  "Chez Paul",  info: "vendeur qui vend " , type: "Nourriture" ),
        Prestataire(photo: "photoPresta" , name:  "Chez Paul",  info: "vendeur qui vend " , type: "Nourriture" ),
        Prestataire(photo: "photoPresta" , name:  "Chez Paul",  info: "vendeur qui vend " , type: "Nourriture" ),
        Prestataire(photo: "photoPresta" , name:  "Chez Paul",  info: "vendeur qui vend " , type: "Nourriture" ),
        Prestataire(photo: "photoPresta" , name:  "Chez Paul",  info: "vendeur qui vend " , type: "Nourriture" ),
        Prestataire(photo: "photoPresta" , name:  "Chez Paul",  info: "vendeur qui vend " , type: "Nourriture" ),
        Prestataire(photo: "photoPresta" , name:  "Chez Paul",  info: "vendeur qui vend " , type: "Nourriture" )
        
    ]
}
