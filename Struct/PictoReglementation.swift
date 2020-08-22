//
//  PictoReglementation.swift
//  GeodexPrototype
//
//  Created by Amandine LEFEBVRE on 03/07/2020.
//  Copyright © 2020 Amandine LEFEBVRE. All rights reserved.
//

import SwiftUI

struct PictoReglementation: View {
    
    var isProtected: Bool
    var isReglemented: Bool
    var isThreatened: Bool
    
    
    var body: some View {
        HStack{
            if isProtected == true {
                VStack{
                    
                    Image(systemName: "umbrella.fill")
                        .foregroundColor(Color("DarkGreen"))
                        .frame(width: 25, height: 25, alignment: .center)
                        .overlay(
                            Circle()
                                .stroke(Color("LightGreen"), lineWidth: 1.5)
                            .foregroundColor(.white)

                    )
                        .padding(4)
                    Text("Protégé")
                        .font(.system(size: 6.0))
                        .offset(x: 0, y: -7)
                    
                }
                
                if isReglemented == true {
                    VStack{
                        
                        Image(systemName: "waveform.path.ecg")
                            .foregroundColor(Color.blue)
                            .frame(width: 25, height: 25, alignment: .center)
                            .overlay(
                                Circle()
                                    .stroke(Color("DarkBlue"), lineWidth: 1.5)
                                .foregroundColor(.white)

                        )
                            
                            .padding(4)
                        Text("Réglementé")
                            .font(.system(size: 6.0))
                            .offset(x: 0, y: -7)
                        
                    }
                    
                }
                
                if isThreatened == true {
                    VStack{
                        
                        Image(systemName: "heart.circle")
                            .frame(width: 25, height: 25, alignment: .center)
                            .overlay(
                                Circle()
                                    .stroke(Color.black, lineWidth: 1.5)
                                    .foregroundColor(.white)
                                
                        )
                            
                            .padding(4)
                        Text("Menacé")
                            .font(.system(size: 6.0))
                            .offset(x: 0, y: -7)
                    }
                    
                }
            }
        }
    }
}

struct PictoReglementation_Previews: PreviewProvider {
    static var previews: some View {
        PictoReglementation(isProtected: true, isReglemented: true, isThreatened: true)
    }
}
