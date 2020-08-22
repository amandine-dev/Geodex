//
//  ListSpecies.swift
//  GeodexPrototype
//
//  Created by Amandine LEFEBVRE on 06/07/2020.
//  Copyright © 2020 Amandine LEFEBVRE. All rights reserved.
//

import SwiftUI

struct ListSpecies: Identifiable{
    var id = UUID()
    var name: String
    var picture: String
}

struct SpeciesListRow: View {
    var species : Species
    
    
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                HStack {
                    Image(species.picture)
                        .resizable()
                        
                        .frame(width: 150, height: 90)
                        .aspectRatio(contentMode: .fit)

                        .padding(.trailing, 3.0)
                        .cornerRadius(14.0)
                    
                    
                    VStack (alignment: .leading) {
                        HStack{
                            Text(species.name)
                            .font(.system(size: 15))

                        }
                    
                        Text(species.latinName)
                            .fontWeight(.thin)
                            .font(.system(size: 13))
                            .italic()
                        
                        HStack{
                            PictoReglementation(isProtected: species.isProtected, isReglemented: species.isReglemented, isThreatened: species.isThreatened)
                        }
                    }
                    .padding(.vertical, 4.0)
                    Spacer()
                    HStack{
                        isPinFavoriteBtn(isPin: species.isPin ?? true)
                        isSharedBtn()
                    }
                    
                }
                
            }
        }
        
    }
}





struct ListSpecies_Previews: PreviewProvider {
    static var previews: some View {
        SpeciesListRow(species: allSpecies[1])
    }
}
