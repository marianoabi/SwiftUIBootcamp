//
//  GridsModule.swift
//  SwiftUIBootcamp
//
//  Created by Abi M on 5/22/24.
//

import SwiftUI

struct GridsModule: View {

    let columns: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible())
    ]

    // subtract 2 when we add 1 pixel of spacing on each horizontal edge
    let dimensions = UIScreen.main.bounds.width / 3 - 2

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 1, content: {
                ForEach(items, id: \.self) { item in
                    Image(item.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: dimensions,height: dimensions)
                        .clipShape(Rectangle())
                }
            })
            .padding(.horizontal, 1)
        }
    }
}

#Preview {
    GridsModule()
}
