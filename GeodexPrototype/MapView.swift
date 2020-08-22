//
//  MapView.swift
//  GeodexPrototype
//
//  Created by Amandine LEFEBVRE on 04/07/2020.
//  Copyright © 2020 Amandine LEFEBVRE. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        // instancie et retourne
        let mapView = MKMapView()
        mapView.addAnnotations(IsPinAnnotation.allIsPin)

        
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
    }
    
    
    typealias UIViewType = MKMapView
    
   
}


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
