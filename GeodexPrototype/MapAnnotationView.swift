//
//  MapAnnotationView.swift
//  GeodexPrototype
//
//  Created by Amandine LEFEBVRE on 04/07/2020.
//  Copyright © 2020 Amandine LEFEBVRE. All rights reserved.
//

import SwiftUI

struct MapAnnotationView: View {
    var body: some View {
        VStack{
            Text("Vos pins")
            MapView()
                .edgesIgnoringSafeArea(.all)
            
        }
        
    }

}

struct MapAnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        MapAnnotationView()
    }
}
