//
//  ButtonsModule.swift
//  SwiftUIBootcamp
//
//  Created by Abi M on 5/23/24.
//

import SwiftUI

struct ButtonsModule: View {

    @State var rectangleColor = Color.blue
    @State var title = "Hello"

    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 200, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 10), style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
                .foregroundStyle(rectangleColor)

            Text(title)
                .font(.title)

            Button("Click Me") {
                print("Button clicked")
                rectangleColor = .pink
                title = "Abigail"
            }
            .padding()

            Button(action: {
                rectangleColor = .purple
                title = "Mariano"
            }, label: {
                Text("Custom Button")
                    .font(.headline)
                    .frame(width: 360, height: 48)
                    .background(.purple)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })

            Button(action: {
                rectangleColor = .red
                title = "Hello"
            }, label: {
                Image(systemName: "heart.circle.fill")
                    .frame(width: 360, height: 48)
                    .background(.yellow)
                    .foregroundStyle(.red)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 10)
                    )
            })
            .padding()
        }
    }
}

#Preview {
    ButtonsModule()
}

/*
 In SwiftUI, @State is a property wrapper used to create and manage mutable state within a view. It's a fundamental concept that allows you to store and track changes to a value so that your view can automatically update whenever that value changes. @State is used primarily for managing small amounts of mutable data that are specific to a single view.
 */
