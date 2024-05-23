//
//  ListsModule.swift
//  SwiftUIBootcamp
//
//  Created by Abi M on 5/23/24.
//

import SwiftUI

struct ListsModule: View {
    var body: some View {
        List {
            Section("Fast Foods") {
                ForEach(items, id: \.self) { item in
                    Text(item.firstName)
                }
                .onDelete(perform: { indexSet in
                    items.remove(atOffsets: indexSet)
                })
            }

            Section("Western Foods") {
                ForEach(foods, id: \.self) { food in
                    Text(food)
                }
            }
        }
        .listStyle(SidebarListStyle())
    }
}

#Preview {
    ListsModule()
}
