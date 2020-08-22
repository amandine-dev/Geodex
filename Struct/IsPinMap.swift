//
//  IsPin.swift
//  GeodexPrototype
//
//  Created by Amandine LEFEBVRE on 04/07/2020.
//  Copyright © 2020 Amandine LEFEBVRE. All rights reserved.
//

import Foundation
import MapKit

struct IsPin {
    var name: String
    var latinName: String
    var latitude: Double = 0.0
    var longitude: Double = 0.0
    var species : Species


static var allIsPin: [IsPin] = [
    IsPin(name: "lalala", latinName: "ICI", latitude: 50.636470, longitude: 3.150266, species : allSpecies[10]),
  // IsPin(name: "lalala", latinName: "nord",latitude: 50.631870, longitude: 3.151469),
   // IsPin(name: "lalala", latinName: "parc heron",latitude: 50.648045, longitude: 3.046744),
   // IsPin(name: "volga", latinName: "petitpois",latitude: 48.833086, longitude: 2.391542)
    
]

}
class IsPinAnnotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    static var allIsPin: [IsPinAnnotation] = IsPin.allIsPin.map { IsPinAnnotation($0) }
    
    init(_ ispin: IsPin) {
        self.coordinate = CLLocationCoordinate2D(latitude: ispin.latitude, longitude: ispin.longitude)
        self.title = ispin.name
        self.subtitle = ispin.latinName
        super.init()
    }
}
