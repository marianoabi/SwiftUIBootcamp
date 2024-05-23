//
//  StacksChallenge.swift
//  SwiftUIBootcamp
//
//  Created by Abi M on 5/20/24.
//

import SwiftUI

var items = [
    Item(image: "jollibee-red", firstName: "Jollibee", lastName: "Binakayan", isFollowing: true),
    Item(image: "mcdo", firstName: "Mcdo", lastName: "Binakayan", isFollowing: true),
    Item(image: "greenwich", firstName: "Greenwich", lastName: "Binakayan", isFollowing: false),
    Item(image: "wendys", firstName: "Wendys", lastName: "Binakayan", isFollowing: true),
    Item(image: "chowking", firstName: "Chowking", lastName: "Binakayan", isFollowing: false),
    Item(image: "burgerking", firstName: "Burger King", lastName: "Binakayan", isFollowing: true),
]

struct Item: Identifiable, Hashable {
    let id = UUID()
    let image: String
    let firstName: String
    let lastName: String
    let isFollowing: Bool
}

struct ImageTextField: View {
//    let imageName: String
//    let placeholder: String
    @Binding var text: String

    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundStyle(.gray)
                .padding(.leading, 8)

            TextField("Search", text: $text)
                .padding(.vertical, 10)
                .padding(.horizontal, 8)
                .background(Color(.systemGray6))
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
        .padding(.horizontal, 16)
    }
}

struct StacksChallenge: View {

    @State private var searchText: String = ""

    var body: some View {
        VStack() {
            NavigationView {
                VStack() {
                    ImageTextField(text: $searchText)
                }
                .navigationTitle("Search")
                .navigationBarTitleDisplayMode(.large)
            }
            .frame(height: 150)
            .statusBarHidden(false)

            List(items) { item in
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
        }
    }
}

#Preview {
    StacksChallenge()
}
