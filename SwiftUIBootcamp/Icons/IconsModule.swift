//
//  IconsModule.swift
//  SwiftUIBootcamp
//
//  Created by Abi M on 6/3/24.
//

import SwiftUI

struct IconsModule: View {
    var body: some View {
        Image(systemName: "square.and.arrow.up.trianglebadge.exclamationmark")
//            .resizable()
            .renderingMode(.original)
//            .aspectRatio(contentMode: .fit)
            .scaledToFit()
            .font(.largeTitle)
//            .font(.system(size: 200))
            .foregroundStyle(.gray)
//            .frame(width: 300, height: 300)
//            .clipped()
    }
}

#Preview {
    IconsModule()
}
