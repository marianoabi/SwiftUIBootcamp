//
//  ScrollViewsModule.swift
//  SwiftUIBootcamp
//
//  Created by Abi M on 5/22/24.
//

import SwiftUI

var foods = [
    "food1",
    "food2",
    "food3",
    "food4",
    "food5",
    "food6",
    "food7",
    "food8",
    "food9",
    "food10"
]

struct ScrollViewsModule: View {

    var body: some View {
        VStack(alignment: .leading) {
            Text("Western Foods")
                .font(.title2)
                .fontWeight(.semibold)
                .padding()

            ScrollView(showsIndicators: false) {
                VStack(spacing: 24) {
                    ForEach(foods, id: \.self) { food in
                        VStack(alignment: .leading) {
                            Image(food)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 360, height: 150)
                                .clipShape(RoundedRectangle(cornerRadius: 10))

                            VStack(alignment: .leading, spacing: 4) {
                                Text("Food")
                                    .fontWeight(.semibold)
                                Text("P350.00 | P90 Delivery Fee | 30 - 45 min")
                                    .foregroundStyle(.gray)
                            }
                            .font(.subheadline)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewsModule()
}
