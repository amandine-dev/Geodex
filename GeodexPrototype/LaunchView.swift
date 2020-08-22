//
//  LaunchView.swift
//  GeodexPrototype
//
//  Created by Amandine LEFEBVRE on 06/07/2020.
//  Copyright © 2020 Amandine LEFEBVRE. All rights reserved.
//

import SwiftUI

struct LaunchView: View {
    var body: some View {
        TabView {
            
            SpeciesListView()
                .tabItem {
                    Image(systemName: "ant")
                    Text("Liste faune et flore")
            }
            MonCarnetView()
                .tabItem {
                    Image(systemName: "book")
                    Text("Mon carnet")
            }
         /*   LocalisationView()
                .tabItem {
                    Image(systemName: "location")
                    Text("Localisation")
                    
            }*/
            ProfilView()
                .tabItem {
                    Image(systemName: "person")
                        .foregroundColor(.red)
                    Text("Mon profil")
                        .foregroundColor(.red)
            }
        }
        .font(.headline)
    
        .accentColor(Color("Brown"))

    }
    
}


struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
