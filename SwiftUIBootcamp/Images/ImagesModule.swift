//
//  ImagesModule.swift
//  SwiftUIBootcamp
//
//  Created by Abi M on 5/19/24.
//

import SwiftUI

struct ImagesModule: View {
    var body: some View {
        Text("I")
            .font(.largeTitle)
            .fontWeight(.bold)

        Image(systemName: "heart.circle.fill")
            .resizable()
            .foregroundStyle(.red)
            .frame(width: 100, height: 100)
//            .font(.largeTitle)
//            .imageScale(.large)
        Text("Jollibee")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundStyle(.orange)
            .italic()
        Image("jollibee")
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 200)
            .clipShape(.circle)

        Image("firebase-icon")
//            .renderingMode(.template)
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 200)
            .foregroundStyle(.black)
//            .cornerRadius(150)
//            .clipShape(Circle())
    }
}

#Preview {
    ImagesModule()
}
