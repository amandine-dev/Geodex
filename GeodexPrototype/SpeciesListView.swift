//
//  SpeciesListView.swift
//  GeodexPrototype
//
//  Created by Amandine LEFEBVRE on 06/07/2020.
//  Copyright © 2020 Amandine LEFEBVRE. All rights reserved.
//

import SwiftUI

struct SpeciesListView: View {
    
    
    @State var showSheetView = false
    
    @State private var listCategories = CategorySpecies.insects.rawValue
    
    //  @Binding var bylocalisation: [EnumRegion]
    
    
    //  @State var filtre = allSpecies.filter{ $0.listCategories == filteredCategories }
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack(alignment: .trailing){
                    List(getByLocalisationAndCategory(bylocalisation: selectedRegion, category: selectedCategory)){ specie in
                        NavigationLink(destination: DetailsSpecies(species: specie)){
                            SpeciesListRow(species: specie)}
                    }
                }.navigationBarTitle("GéoDex liste", displayMode: .inline)
                    .navigationBarItems(trailing:
                        Button(action: {
                            print(self.listCategories)
                            self.showSheetView.toggle()
                        }) {
                            Image(systemName: "slider.horizontal.3")
                                
                                .frame(width: 40, height: 40)
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(.gray)
                            
                        }.sheet(isPresented: $showSheetView) {
                            SpeciesFilterListView(showSheetView: self.$showSheetView, filteredCategories: self.$listCategories)
                            
                            
                        }
                )
                
            }
            
        }
    }
}

struct SpeciesListView_Previews: PreviewProvider {
    static var previews: some View {
        SpeciesListView()
    }
}
