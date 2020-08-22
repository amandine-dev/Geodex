//
//  FicheMonCarnet.swift
//  GeodexPrototype
//
//  Created by Amandine LEFEBVRE on 02/07/2020.
//  Copyright © 2020 Amandine LEFEBVRE. All rights reserved.
//

import SwiftUI



struct FicheMonCarnet: View {
    
    var species: Species
    
    var body: some View {
        
        
        ZStack{
            Image("papersheet")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 220, height: 280)
            
            VStack{
                Image(systemName: "pin.fill")
                    .foregroundColor(Color("Brown"))
                    .offset(x: 0, y: -4)
                    .rotationEffect(.degrees(-4))
                
                Text(species.name)
                    .font(.system(size: 12.0))
                    .bold()
                
                Image(species.picture)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 110)
                    .offset(x: 4, y: 0)


                
                PictoReglementation(isProtected: species.isProtected, isReglemented: species.isReglemented, isThreatened: species.isThreatened)
            }
        }
    }
}

struct FicheMonCarnet_Previews: PreviewProvider {
    static var previews: some View {
        FicheMonCarnet(species: allSpecies[18])
    }
}
