//
//  ContentView.swift
//  Scribbles
//
//  Created by Aditya Mishra on 05/10/25.
//

import SwiftUI

struct ContentView: View {
    let listOfContent = allContent
    var body: some View {
        NavigationView {
            List(listOfContent) {
                NavigationLink(
                    $0.contents.generateName(),
                    destination: $0.contents.generateUI()
                )
            }
        }
    }
}

#Preview {
    ContentView()
}
