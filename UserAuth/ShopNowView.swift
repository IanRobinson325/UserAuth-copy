//
//  ShopNowView.swift
//  UserAuth
//
//  Created by Ian Robinson on 7/24/25.
//

import SwiftUI

struct Restaurant: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let description: String
}

struct ContentView: View {
    let restaurants = [
        Restaurant(name: "Pizza Palace", imageName: "Pizza image", description: "Hot & Fresh Pizzas"),
        Restaurant(name: "Sushi Central", imageName: "Sushi image", description: "Delicious Japanese Rolls"),
        Restaurant(name: "Burger Bros", imageName: "Burger", description: "Big Juicy Burgers"),
        Restaurant(name: "Taco Time", imageName: "Taco image", description: "Spicy Street Tacos")
    ]

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(restaurants) { restaurant in
                        RestaurantCard(restaurant: restaurant)
                    }
                }
                .padding()
            }
            .navigationTitle("Nearby Restaurants")
        }
    }
}

struct RestaurantCard: View {
    let restaurant: Restaurant

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            Image(restaurant.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 180)
                .clipped()
                .cornerRadius(12)

            Text(restaurant.name)
                .font(.headline)

            Text(restaurant.description)
                .font(.subheadline)
                .foregroundColor(.gray)

            Button(action: {
                print("Order from \(restaurant.name)")
            }) {
                Text("Order Now")
                    .font(.subheadline)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(16)
        .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 4)
    }
}

#Preview{
    ContentView()
}


