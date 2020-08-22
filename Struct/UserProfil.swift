//
//  UserProfil.swift
//  GeodexPrototype
//
//  Created by Amandine LEFEBVRE on 01/07/2020.
//  Copyright © 2020 Amandine LEFEBVRE. All rights reserved.
//

import SwiftUI

struct UserProfil : Identifiable {
    
    var id = UUID()
    
    var firstName: String
    var lastName: String
    var customizeColor: ColorCustomize?
    /*var isGeoLocalisation : Localisation?*/
    var isLocalisation: [EnumRegion]
    var isShared : IsShared?
    var isPin : MonCarnet?
    var pinSpecies : [Species]?
    var sharedSpecies: [Species]?
}
    
let user = UserProfil(firstName: "Rosie", lastName: "DELORME", customizeColor: nil, isLocalisation: [EnumRegion.nord], isShared: nil, isPin: nil, pinSpecies: allSpecies, sharedSpecies: allSpecies)

var users = [user]
    
   
