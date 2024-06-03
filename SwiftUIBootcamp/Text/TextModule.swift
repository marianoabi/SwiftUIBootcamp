//
//  TextModule.swift
//  SwiftUIBootcamp
//
//  Created by Abi M on 5/19/24.
//

import SwiftUI

struct TextModule: View {
    var body: some View {
        Text("Hello, this is my first SwiftUI reposritory that would be uploaded in Github..")
            .font(.subheadline) // view modifier
            .foregroundStyle(.cyan)
            .fontWeight(.light)
            .multilineTextAlignment(.leading)
            .italic()
            .underline()
            .baselineOffset(10)
            .kerning(10)
    }
}

#Preview {
    TextModule()
}
