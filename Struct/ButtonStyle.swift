//
//  ButtonStyle.swift
//  GeodexPrototype
//
//  Created by Amandine LEFEBVRE on 08/07/2020.
//  Copyright © 2020 Amandine LEFEBVRE. All rights reserved.
//

import SwiftUI

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(configuration.isPressed ? Color.white.opacity(0.1): Color.white.opacity(0.7))
            .padding()
            .background(configuration.isPressed ? Color.white.opacity(0.7): Color.white.opacity(0.2))
        

            .cornerRadius(15.0)
    }
}

struct ButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
