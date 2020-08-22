//
//  isPinFavoriteBtn.swift
//  GeodexPrototype
//
//  Created by Amandine LEFEBVRE on 07/07/2020.
//  Copyright © 2020 Amandine LEFEBVRE. All rights reserved.
//

import SwiftUI


struct isPinFavoriteBtn: View {
    
    var isPin: Bool = true
    
    
    var body: some View {
        HStack{
            if isPin == true {
                VStack{
                    
                    Image(systemName: "pin.fill")
                        .foregroundColor(Color("Brown"))
                        .frame(width: 25, height: 25, alignment: .center)
                        
                        .padding(4)
                    
                    
                }
            }
            else { Image(systemName: "pin")
                .foregroundColor(Color("Brown"))
                .frame(width: 25, height: 25, alignment: .center)
                
                .padding(4)}
        }
    }
}

struct isPinFavoriteBtn_Previews: PreviewProvider {
    static var previews: some View {
        isPinFavoriteBtn()
    }
}


