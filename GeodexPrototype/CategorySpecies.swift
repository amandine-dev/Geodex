//
//  CategorySpecies.swift
//  GeodexPrototype
//
//  Created by Amandine LEFEBVRE on 01/07/2020.
//  Copyright © 2020 Amandine LEFEBVRE. All rights reserved.
//

import SwiftUI

enum CategorySpecies : String, CaseIterable, Hashable, Identifiable {
    var id: String { self.rawValue }
    case all = "Tout"
    case birds = "Oiseaux"
    case plants = "Plantes et Fleurs"
    case trees = "Arbres"
    case fishes = "Poissons & crustacés"
    case mammals = "Mammifères"
    case reptils = "Reptiles & Amphibiens"
    case insects = "Insectes"
    case mushroom = "Champignons"

}
