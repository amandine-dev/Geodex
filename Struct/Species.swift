//
//  Species.swift
//  GeodexPrototype
//
//  Created by Amandine LEFEBVRE on 01/07/2020.
//  Copyright © 2020 Amandine LEFEBVRE. All rights reserved.
//

import SwiftUI



struct Species: Identifiable {
    
    var id = UUID()
    
    var picture: String
    var picture2: String?
    var picture3: String?
    var name: String
    var latinName: String
    var isProtected: Bool
    var isReglemented : Bool
    var isThreatened : Bool
    var category: [CategorySpecies]
    var description: String
    var habitat: String
    var biology: String
    var mainColor: [ColorChoice]
    var secondaryColor: [ColorChoice]?
    var bodyCover: BodyCover?
    var minSize: Double?
    var maxSize: Double?
    var isShared: Bool?
    var isPin: Bool?
    var isPin2: Bool?
    var isPin3: Bool?


    var localisation: [EnumRegion]

}


