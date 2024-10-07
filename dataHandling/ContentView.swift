//
//  ContentView.swift
//  dataHandling
//
//  Created by 강시우 on 10/5/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(items) { item in
                    NavigationLink {
                        Text ("\(item.id)")
                    } label: {
                        Text("\(item.id)")
                    }
                }
            }
        } detail: {
            Text("Hello, World")
        }
        .navigationTitle("Editor")
    }
    
    
    
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
