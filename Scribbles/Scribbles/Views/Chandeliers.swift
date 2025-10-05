//
//  Chandeliers.swift
//  Scribbles
//
//  Created by Aditya Mishra on 05/10/25.
//

import SwiftUI

struct Chandeliers: View {
    @State var isAnimating: Bool = false
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                Circle()
                    .stroke(lineWidth: 5)
                    .foregroundStyle(
                        .blue
                    )
                    .shadow(
                        color: .red,
                        radius: 10,
                        x: isAnimating ? -50 : 50,
                        y: isAnimating ? -50 : 50,
                    )
                    .frame(
                        width: isAnimating ? 150 : 200,
                        height: isAnimating ? 150 : 200
                    )
                    .animation(
                        Animation.easeInOut(duration: 1).repeatForever(autoreverses: true),
                        value: isAnimating
                    )
                Circle()
                    .stroke(lineWidth: 5)
                    .foregroundStyle(
                        .red
                    )
                    .shadow(
                        color: .blue,
                        radius: 10,
                        x: isAnimating ? 50 : -50,
                        y: isAnimating ? 50 : -50
                    )
                    .frame(
                        width: isAnimating ? 200 : 150,
                        height: isAnimating ? 200 : 150
                    )
                    .animation(
                        Animation.easeInOut(duration: 1).repeatForever(autoreverses: true),
                        value: isAnimating
                    )
            }
            Spacer()
            Button {
                isAnimating.toggle()
            } label: {
                Text("Toggle Animation")
            }
        }
    }
}
