//
//  SecondScreen.swift
//  AcademyEats
//
//  Created by Vania Radmila Alfitri on 03/03/26.
//

import SwiftUI

struct SecondScreen: View {
    var restaurant: Restaurant
    
    var body: some View {
        List {
            Image(restaurant.image)
                .resizable()
                .scaledToFill()
                .frame(width: .infinity, height: .infinity)
                .padding()
                .listRowSeparator(.hidden)
            Text(restaurant.name)
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Text(restaurant.description)
                .padding()
                .listRowSeparator(.hidden)
        }
    }
}

#Preview {
    SecondScreen(restaurant: Restaurant(id: 0, name: "", description: "", image: ""))
}
