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
        Restaurant(id: 1, name: "Sarimande", description: "Enjoy the tastes of Padang food in the heart of Bali.", image: "Sarimande"),
        Restaurant(id: 2, name: "Amanaia", description: "Enjoy the tastes of Sundanese food in the heart of Bali.", image: "Amanaia"),
        Restaurant(id: 3, name: "Wanaku", description: "Enjoy the tastes of Chinese cuisine in the heart of Bali.", image: "Wanaku")
        ]
    }
    var body: some View {
        NavigationStack {
            List {
                ForEach(restaurants) { restaurant in
                    NavigationLink(destination: SecondScreen(restaurant: restaurants[0])) {
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
