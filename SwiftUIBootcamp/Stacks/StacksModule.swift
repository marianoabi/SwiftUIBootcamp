//
//  StacksModule.swift
//  SwiftUIBootcamp
//
//  Created by Abi M on 5/19/24.
//

import SwiftUI

struct StacksModule: View {
    var body: some View {
        VStack(spacing: 20) {
            VStack() {

                ZStack() {
                    RoundedRectangle(cornerRadius: 15, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.blue)
                        .frame(width: 200, height: 100)
                    Text("Hello, World!")
                        .foregroundStyle(.white)
                        .font(.headline)
                }

                ZStack() {
                    RoundedRectangle(cornerRadius: 15, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.red)
                        .frame(width: 200, height: 100)
                    Image(systemName: "globe")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width: 30, height: 30)
                }
            }

            HStack(alignment: .bottom) {
                VStack() {
                    RoundedRectangle(cornerRadius: 15, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.yellow)
                        .frame(width: 100, height: 200)

                    Text("Android")
                }

                VStack() {
                    RoundedRectangle(cornerRadius: 15, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.green)
                        .frame(width: 100, height: 100)
                    Text("iPhone")
                }

                VStack() {
                    RoundedRectangle(cornerRadius: 15, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.purple)
                        .frame(width: 100, height: 50)
                    Text("Others")
                }
            }

            ZStack(alignment: .bottomTrailing) {
                ZStack(alignment: .topLeading) {
                    RoundedRectangle(cornerRadius: 15, style: .continuous)
                        .foregroundStyle(.orange)
                        .frame(width: 150, height: 150)
                    Text("The World")
                        .foregroundStyle(.blue)
                }

                ZStack(alignment: .topLeading) {
                    RoundedRectangle(cornerRadius: 15, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.cyan)
                        .frame(width: 100, height: 100)
                    Text("Vs")
                        .foregroundStyle(.red)
                }

                ZStack() {
                    RoundedRectangle(cornerRadius: 15, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.brown)
                        .frame(width: 50, height: 50)
                    Text("Me")
                        .foregroundStyle(.green)
                }
            }
        }
    }
}

#Preview {
    StacksModule()
}
