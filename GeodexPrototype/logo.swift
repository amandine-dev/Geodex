//
//  logo.swift
//  GeodexPrototype
//
//  Created by Amandine LEFEBVRE on 09/07/2020.
//  Copyright © 2020 Amandine LEFEBVRE. All rights reserved.
//

import SwiftUI

struct logo: View {
    var body: some View {
        
        Image(systemName: "ant")
                               .resizable()
                               .frame(width: 200, height: 250)
                               .foregroundColor(Color("Brown"))
        
    }
    
}
struct logo_Previews: PreviewProvider {
    static var previews: some View {
        logo()
    }
}
