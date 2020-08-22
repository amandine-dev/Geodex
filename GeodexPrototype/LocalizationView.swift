//
//  LocalisationView.swift
//  GeodexPrototype
//
//  Created by Amandine LEFEBVRE on 02/07/2020.
//  Copyright © 2020 Amandine LEFEBVRE. All rights reserved.
//

import SwiftUI



struct LocalisationView: View {
    
    
    @State private var selectedLocalisation = EnumRegion.france.rawValue
    @State private var isShowingRegionList = false
    
  //  var regionValue = ""
    
    var body: some View {
            
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color("LightYellow"), Color("LightGreen"), Color("DarkGreen"),  ]), startPoint: .topTrailing, endPoint: .bottomLeading)
                    .edgesIgnoringSafeArea(.all)
                
                
                VStack{
                    
                    ZStack{
                        
                        
                        Circle()
                            .fill(Color.white)
                            // .offset(x: 0, y: -80)
                            .frame(width: 200, height: 200)
                            .opacity(0.4)
                        Image(systemName: "location")
                            .resizable()
                            .frame(width: 135, height: 135)
                            .foregroundColor(.white)
                            .offset(x: -8, y: 5)
                        
                        
                    }
                    .padding(.top, 80)
                    Spacer()
                    
                    Text("Choisissez une localité")
                    Spacer()
                    
                    Picker(selection: $selectedLocalisation, label: Text("Choix")) {
                        ForEach(EnumRegion.allCases) { selectedRegion in
                                Text(selectedRegion.rawValue.capitalized)
                            
                        }
                    }.labelsHidden()
                        .offset(x: -5, y: -72)
                        .onReceive([self.selectedLocalisation].publisher.first()) { (value) in
                            switch value {
                              case "Nord":
                                selectedRegion = EnumRegion.nord
                              case "Ile de France":
                                selectedRegion = EnumRegion.iledeFrance
                                case "Bretagne":
                                 selectedRegion = EnumRegion.bretagne

                            default:
                                 selectedRegion = EnumRegion.france

                            }
                    }

                    Spacer()
                    
                    Text("Powered by Green Adventure©")
                    .foregroundColor(.white)
                    .font(.custom("Helvetica Neue", size: 12))
                    .opacity(0.6)
                    .padding(.bottom, 29.0)
                }
                
                
                
            }
            
            
            
        }
        
    }

/*   Button(action: {
       self.regionValue
   }) {
       Text("Valider")
           .foregroundColor(.black)
       
   }.onTapGesture {
       if self.regionValue == EnumRegion.nord.rawValue {
           selectedRegion = EnumRegion.nord
       }
       else if self.regionValue == EnumRegion.iledeFrance.rawValue {
           selectedRegion = EnumRegion.iledeFrance
       }
       else if self.regionValue == EnumRegion.bretagne.rawValue {
           selectedRegion = EnumRegion.bretagne
       }
       else  {
           selectedRegion = EnumRegion.france
       }
   }*/


struct LocalisationView_Previews: PreviewProvider {
    static var previews: some View {
        LocalisationView()
    }
}
