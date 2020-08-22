//
//  MonCarnetView.swift
//  GeodexPrototype
//
//  Created by Amandine LEFEBVRE on 02/07/2020.
//  Copyright © 2020 Amandine LEFEBVRE. All rights reserved.
//

import SwiftUI



struct MonCarnetView: View {
    
    //var allspecies: [Species]
    
    
    let isPin = allSpecies.filter { $0.isPin == true }
    let isPin2 = allSpecies.filter { $0.isPin2 == true }
    let isPin3 = allSpecies.filter { $0.isPin3 == true }

    
    
    var body: some View {
        
        
        NavigationView{
            ScrollView(.vertical) {
                
                VStack(alignment: .leading){
                    Text("Vendredi 24 avril 2020")
                        .italic()
                    .bold()
                    .offset(x: 3, y: 15)
                        
                    ScrollView(.horizontal) {
                        HStack(spacing: 8){
                            ForEach(isPin) { fiche in
                                NavigationLink(destination: DetailsSpecies(species: fiche)){
                                    FicheMonCarnet(species: fiche)
                                        
                                        .onAppear {
                                            UITableView.appearance().separatorStyle = .none
                                    }
                                }.buttonStyle(PlainButtonStyle())
                                
                            }
                        }
                        
                    }
                    Text("Mardi 4 avril 2020")
                        .italic()
                        .bold()
                        .offset(x: 3, y: 15)
                        
                    
                    ScrollView(.horizontal) {
                        HStack(spacing: 8){
                            ForEach(isPin2) { fiche in
                                NavigationLink(destination: DetailsSpecies(species: fiche)){
                                    HStack{
                                        FicheMonCarnet(species: fiche)
                                    }
                                    .onAppear {
                                        UITableView.appearance().separatorStyle = .none
                                    }
                                }.buttonStyle(PlainButtonStyle())
                                
                            }
                        }
                        
                    }
                    Text("Dimanche 2 avril 2020")
                        .italic()
                     .bold()
                    .offset(x: 3, y: 15)
                    ScrollView(.horizontal) {
                        HStack(spacing: 8){
                            ForEach(isPin3) { fiche in
                                NavigationLink(destination: DetailsSpecies(species: fiche)){
                                    HStack{
                                        FicheMonCarnet(species: fiche)
                                    }
                                    .onAppear {
                                        UITableView.appearance().separatorStyle = .none
                                    }
                                }.buttonStyle(PlainButtonStyle())
                                
                            }
                        }
                        
                    }
                }
            }
                
                
            .padding()
            .navigationBarTitle("Mon carnet GéoDex ", displayMode: .inline)
            
        }
        
    }
}


struct MonCarnetView_Previews: PreviewProvider {
    static var previews: some View {
        MonCarnetView()
    }
}


