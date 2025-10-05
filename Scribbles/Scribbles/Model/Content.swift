//
//  Content.swift
//  Scribbles
//
//  Created by Aditya Mishra on 05/10/25.
//

import Foundation
import SwiftUI

let allContent = [
    Content(id: 1, contents: .danglingChandeliers)
]

struct Content: Identifiable {
    var id: Int
    var contents: ContentName
}

enum ContentName {
    case danglingChandeliers

    func generateName() -> String {
        switch self {
        case .danglingChandeliers:
            return "Dangling Chandliers"
        }
    }

    func generateUI() -> some View {
        switch self {
        case .danglingChandeliers:
            return Chandeliers()
        }
    }
}
