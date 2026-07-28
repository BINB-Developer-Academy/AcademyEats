//
//  FirstScreen.swift
//  AcademyEats
//
//  Created by Vania Radmila Alfitri on 03/03/26.
//

import SwiftUI

struct FirstScreen: View {
    let user: String
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    SecondScreen()
                } label: {
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
            }
            .navigationTitle("Academy Eats")
            .navigationBarTitleDisplayMode(.large)
        }
        
        
    }
}

#Preview {
    FirstScreen(user: "")
}
