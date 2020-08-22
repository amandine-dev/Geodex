//
//  SpeciesFilterListView.swift
//  GeodexPrototype
//
//  Created by Amandine LEFEBVRE on 07/07/2020.
//  Copyright © 2020 Amandine LEFEBVRE. All rights reserved.
//

import SwiftUI

struct SpeciesFilterListView: View {
    
    @Binding var showSheetView: Bool
    @State private var selectedLocalisation = EnumRegion.france.rawValue
    
    @State private var speciesFilterList = CategorySpecies.all.rawValue
    @Binding var filteredCategories: CategorySpecies.RawValue
    
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("LightYellow"), Color("LightGreen"), Color("DarkGreen"),  ]), startPoint: .topTrailing, endPoint: .bottomLeading)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Rechercher dans GéoDex®")
                    .padding(.top, 40.0)
                Spacer()
                ZStack{
                    Circle()
                        .fill(Color.white)
                        // .offset(x: 0, y: -80)
                        .frame(width: 120, height: 120)
                        .opacity(0.5)
                    Image(systemName: "ant")
                        .resizable()
                        .frame(width: 75, height: 85)
                        .foregroundColor(Color("Brown"))
                }
                Picker(selection: $filteredCategories, label: Text("")) {
                    ForEach(CategorySpecies.allCases) { category in
                        Text(category.rawValue)}
                }.labelsHidden()
                    .offset(x: -5, y: -72)
                    .onReceive([self.filteredCategories].publisher.first()) { (value) in
                        switch value {
                        case "Oiseaux":
                            selectedCategory = CategorySpecies.birds
                        case "Plantes et Fleurs":
                            selectedCategory = CategorySpecies.plants
                        case "Arbres":
                            selectedCategory = CategorySpecies.trees
                        case "Poissons & crustacés":
                            selectedCategory = CategorySpecies.fishes
                        case "Mammifères":
                            selectedCategory = CategorySpecies.mammals
                        case "Reptiles & Amphibiens":
                            selectedCategory = CategorySpecies.reptils
                        case "Insectes":
                            selectedCategory = CategorySpecies.insects
                        case "Champignons":
                             selectedCategory = CategorySpecies.mushroom
                        default:
                            selectedCategory = CategorySpecies.all}
                }.offset(x: 0, y: 50)
                ZStack{
                    Circle()
                        .fill(Color.white)
                        // .offset(x: 0, y: -80)
                        .frame(width: 120, height: 120)
                        .opacity(0.5)
                    Image(systemName: "location")
                        .resizable()
                        .frame(width: 75, height: 75)
                        .foregroundColor(Color("Brown"))
                        .offset(x: -8, y: 5)
                }

                Picker(selection: $selectedLocalisation, label: Text("Choix")) {
                    ForEach(EnumRegion.allCases) { selectedRegion in
                        Text(selectedRegion.rawValue.capitalized)}
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
                }.offset(x: 0, y: 50)
                
                Button(action: {
                    self.showSheetView.toggle()
                }) {
                    Text("Valider")
                        
                }.buttonStyle(GradientButtonStyle())
                .frame(height: 10)

            }
        }
        
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

struct SpeciesFilterListView_Previews: PreviewProvider {
    static var previews: some View {
        SpeciesFilterListView(showSheetView:.constant(true), filteredCategories: .constant("")
        ) }
}


