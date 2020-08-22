//
//  enumRegion.swift
//  GeodexPrototype
//
//  Created by Amandine LEFEBVRE on 01/07/2020.
//  Copyright © 2020 Amandine LEFEBVRE. All rights reserved.
//

import Foundation

enum EnumRegion : String, CaseIterable, Hashable, Identifiable {
    var id: String { self.rawValue }

    case france = "France"
    case nord = "Nord"
    case iledeFrance = "Ile de France"
    case bretagne = "Bretagne"
}
