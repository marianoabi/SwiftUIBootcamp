//
//  SpacersModule.swift
//  SwiftUIBootcamp
//
//  Created by Abi M on 5/20/24.
//

import SwiftUI

struct SpacersModule: View {
    var body: some View {
        VStack {
            Text("Spacers Module")

            Spacer()
                .frame(width: 24)
                .background(.red)

            Text("Spacers Module")
        }

        HStack {
            Text("Horizontal")

            Spacer()
                .frame(height: 24)
                .background(.blue)

            Text("Horizontal")
        }
    }
}

#Preview {
    SpacersModule()
}
