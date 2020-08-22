//
//  isSharedBtn.swift
//  GeodexPrototype
//
//  Created by Amandine LEFEBVRE on 03/07/2020.
//  Copyright © 2020 Amandine LEFEBVRE. All rights reserved.
//

import SwiftUI

struct isSharedBtn: View {
    @State private var showShareSheet = false
        
        var body: some View {
            VStack(spacing: 20) {
                Button(action: {
                    self.showShareSheet = true
                }) {
                    Image(systemName: "square.and.arrow.up")
                    .foregroundColor(Color("DarkGreen"))

                }
            }
            .sheet(isPresented: $showShareSheet) {
                ShareSheet(activityItems: ["Partager cette fiche"])
            }
        }
    }

struct isSharedBtn_Previews: PreviewProvider {
    static var previews: some View {
        isSharedBtn()
    }
}
