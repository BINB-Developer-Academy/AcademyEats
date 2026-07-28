//
//  FirstScreen.swift
//  AcademyEats
//
//  Created by Vania Radmila Alfitri on 03/03/26.
//

import SwiftUI

struct FirstScreen: View {
    let user: String
    var restaurants: [Restaurant] {
        [
        Restaurant(id: 1, name: "Sarimande", description: "Food", image: "sarimande"),
        Restaurant(id: 2, name: "Amanaia", description: "Indonesian", image: "Amanaia"),
        Restaurant(id: 3, name: "Wanaku", description: "Chinese", image: "Wanaku")
        ]
    }
    var body: some View {
        NavigationStack {
            List {
                ForEach(restaurants) { restaurant in
                    NavigationLink(destination: SecondScreen()) {
                        HStack {
                            Image(restaurant.image)
                                .resizable()
                                .foregroundStyle(.tint)
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .clipped()
                            Text(restaurant.name)
                                .font(.title)
                        }
                    }
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
