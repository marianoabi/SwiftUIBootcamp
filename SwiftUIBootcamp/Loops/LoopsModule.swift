//
//  LoopsModule.swift
//  SwiftUIBootcamp
//
//  Created by Abi M on 5/20/24.
//

import SwiftUI

struct LoopsModule: View {
    var body: some View {
        ForEach(items, id: \.self) { item in
            HStack() {
                Image(item.image)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(.circle)

                VStack(alignment: .leading) {
                    Text(item.firstName)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.subheadline)
                        .fontWeight(.semibold)

                    Text(item.lastName)
                        .font(.subheadline)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                }

                Button(item.isFollowing ? "Following" : "Follow", action: {
                    print("Button tapped")
                })
                .frame(width: 100, height: 30)
                .foregroundStyle(item.isFollowing ? .gray : .black)
                .fontWeight(.bold)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                )
                .disabled(item.isFollowing)
            }
        }

        Text("Loop ended")
    }
}

#Preview {
    LoopsModule()
}
