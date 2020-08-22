//
//  ShareSheet.swift
//  GeodexPrototype
//
//  Created by Amandine LEFEBVRE on 06/07/2020.
//  Copyright © 2020 Amandine LEFEBVRE. All rights reserved.
//

import SwiftUI
import UIKit

struct ShareSheet: UIViewControllerRepresentable {
    typealias Callback = (_ activityType: UIActivity.ActivityType?, _ completed: Bool, _ returnedItems: [Any]?, _ error: Error?) -> Void
    
    let activityItems: [Any]
    let applicationActivities: [UIActivity]? = nil
    let excludedActivityTypes: [UIActivity.ActivityType] = [UIActivity.ActivityType.addToReadingList,
    UIActivity.ActivityType.copyToPasteboard]
    let callback: Callback? = nil
    
    func makeUIViewController(context: Context) -> UIActivityViewController {
        let url = URL(string: "https://simplon.co")
        let controller = UIActivityViewController(
            activityItems: [url!],
            applicationActivities: applicationActivities)
        controller.excludedActivityTypes = excludedActivityTypes
        controller.completionWithItemsHandler = callback
        return controller
    }
    
    
    
    
    
    /*func activityViewController(_ activityViewController: UIActivityViewController, itemForActivityType activityType: UIActivity.ActivityType?) -> Any? {
     if activityType == .airDrop {
     return "Download #MyAwesomeApp via @twostraws."
     } else {
     return "Download MyAwesomeApp from TwoStraws."
     }
     }*/
    
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
        // nothing to do here
    }
}
