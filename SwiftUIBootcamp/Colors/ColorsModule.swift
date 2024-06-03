//
//  ColorsModule.swift
//  SwiftUIBootcamp
//
//  Created by Abi M on 6/3/24.
//

import SwiftUI

struct ColorsModule: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
//                Color.primary
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
//            .shadow(color: Color.red, radius: 10, x: 20, y: 20)
            .shadow(color: Color("CustomColor").opacity(0.5), radius: 10, x: 20, y: 20)
    }
}

#Preview {
    ColorsModule()
}
