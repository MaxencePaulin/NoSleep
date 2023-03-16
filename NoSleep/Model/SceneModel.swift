//
//  Scene.swift
//  NoSleep
//
//  Created by paulin maxence on 16/03/2023.
//

import Foundation

struct SceneModel : Identifiable{
    var id = UUID()
    var name: String
    
    
    static var scenes = [
        SceneModel(name: "Scene 1")
    ]
}
