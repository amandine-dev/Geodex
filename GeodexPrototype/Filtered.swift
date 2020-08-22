//
//  Filtered.swift
//  GeodexPrototype
//
//  Created by Amandine LEFEBVRE on 07/07/2020.
//  Copyright © 2020 Amandine LEFEBVRE. All rights reserved.
//

import Foundation

/*func getSpeciesFromCategory(category: CategorySpecies) -> [Species] {
    let filteredCategory = allSpecies.filter{ $0.category == category }
    return filteredCategory
    }
    
*/

/*  func getbyLocalisation(localisation: [Localisation]) -> [Species] {
 let filteredLocalisation = allSpecies.filter { $0.Localisation[EnumRegion]) == localisation }
 return filteredLocalisation*/
 

func getByLocalisation(bylocalisation: EnumRegion) -> [Species] {
    let filteredLocalisation = allSpecies.filter{ $0.localisation.contains(bylocalisation)}
    return filteredLocalisation
}

func getByLocalisationAndCategory(bylocalisation: EnumRegion, category : CategorySpecies) -> [Species] {
    let filteredLocalisation = allSpecies.filter{ $0.localisation.contains(bylocalisation) && $0.category.contains(category) }
    return filteredLocalisation
}
