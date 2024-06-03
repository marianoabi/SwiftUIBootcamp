//
//  GradientsModule.swift
//  SwiftUIBootcamp
//
//  Created by Abi M on 6/3/24.
//

import SwiftUI

struct GradientsModule: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
//                LinearGradient(
//                    gradient: Gradient(colors: [Color(.magenta), Color.pink]),
//                    startPoint: .topLeading,
//                    endPoint: .bottom
//                )

//                RadialGradient(
//                    gradient: Gradient(colors: [Color(.magenta), Color.pink]),
//                    center: .leading,
//                    startRadius:5,
//                    endRadius: 400
//                )

                AngularGradient.init(
                    gradient: Gradient(colors: [Color(.magenta), Color.pink]),
                    center: .topLeading,
                    angle: .degrees(180 + 45)
                )
            )
            .frame(width: 300, height: 200)
            .shadow(color: Color.black.opacity(0.5), radius: 10, x: 20, y: 20)

    }
}

#Preview {
    GradientsModule()
}
