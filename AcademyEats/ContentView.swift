//
//  ContentView.swift
//  AcademyEats
//
//  Created by Vania Radmila Alfitri on 19/02/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                HStack {
                    Image("sarimande")
                        .resizable()
                        .foregroundStyle(.tint)
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                        .clipped()
                        .aspectRatio(contentMode: .fit)
                    Text("Sarimande")

                }
                .padding()
                .frame(height: 100)
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Academy Eats")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    ContentView()
}
