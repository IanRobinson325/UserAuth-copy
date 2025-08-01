//
//  IanView.swift
//  Malcolm Dooley
//
//  Created by Cameron Warner on 8/1/25.
//

import SwiftUI

struct IanView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    
                    Section{
                        Image("Pizza image")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 180)
                            .clipped()
                            .cornerRadius(12)
                        Text("Pizza Palace")
                            .font(.headline)
                        Text("Hot & Fresh Pizzas")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Button(action: {
                        }) {
                            Text("Order Now")
                                .font(.subheadline)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                    }// End of Section
                    
                    Section{
                        Image("Sushi image")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 180)
                            .clipped()
                            .cornerRadius(12)
                        Text("Suhi Palace")
                            .font(.headline)
                        Text("Delicious Japanese Rolls")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Button(action: {
                        }) {
                            Text("Order Now")
                                .font(.subheadline)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                    }// End of Section
                    
                    Section{
                        Image("Burger")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 180)
                            .clipped()
                            .cornerRadius(12)
                        Text("Burger Bros")
                            .font(.headline)
                        Text("Big Juicy Burgers")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Button(action: {
                        }) {
                            Text("Order Now")
                                .font(.subheadline)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                    }// End of Section
                    
                    Section{
                        Image("Taco image")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 180)
                            .clipped()
                            .cornerRadius(12)
                        Text("Taco Time")
                            .font(.headline)
                        Text("Spicy Street Tacos")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Button(action: {
                        }) {
                            Text("Order Now")
                                .font(.subheadline)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                    }// End of Section
                    
                    
                }// End of VStack
              .padding()
              .background(Color(.systemBackground))
              .cornerRadius(16)
              .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 4)
      
            }// End of Scroll View
          } // End of NavStacks
    }
}

#Preview {
    IanView()
}
