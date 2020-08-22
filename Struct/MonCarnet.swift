//
//  MonCarnet.swift
//  GeodexPrototype
//
//  Created by Amandine LEFEBVRE on 01/07/2020.
//  Copyright © 2020 Amandine LEFEBVRE. All rights reserved.
//

import SwiftUI



struct MonCarnet{
    var species : [Species]
    /*var isGeoLocalisation : [Localisation]?*/
    var isLocalisation: [EnumRegion]
    var isPin: Bool?
    var date : Date
    
    
     var body: some View {
            
            HStack {
                
                Text("Fiche")
        }
    }
}

  




struct MonCarnet_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
