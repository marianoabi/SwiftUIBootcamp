//
//  PaddingModule.swift
//  SwiftUIBootcamp
//
//  Created by Abi M on 5/20/24.
//

import SwiftUI

struct PaddingModule: View {
    var body: some View {
        VStack {
            Text("Hello, World! How are you doing today?")
                .background(.blue)
                .padding() // all edges
                .background(.pink)

            Text("Horizontal Padding")
                .padding(.horizontal, 32) // left + right
                .background(.purple)

            Text("Vertical Padding")
                .padding(.vertical, 32) // top + bottom
                .background(.blue)

            Text("Leading Padding")
                .padding(.leading, 32) // leading
                .background(.pink)

            Text("Trailing Padding")
                .padding(.trailing, 32) // trailing
                .background(.yellow)

            Text("Top Padding")
                .padding(.top, 32) // top
                .background(.green)

            Text("Bottom Padding")
                .padding(.bottom, 32) // bottom
                .background(.orange)
        }
    }
}

#Preview {
    PaddingModule()
}
