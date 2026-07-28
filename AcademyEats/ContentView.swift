//
//  ContentView.swift
//  AcademyEats
//
//  Created by Vania Radmila Alfitri on 19/02/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FirstScreen(user: "")
                .tabItem {
                    Label("First Screen", systemImage: "house")
                }
            SecondScreen()
                .tabItem {
                    Label("Second Screen", systemImage: "person")
                }
        }
        
    }
    
}

#Preview {
    ContentView()
}
