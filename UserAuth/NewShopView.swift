//
//  NewShopView.swift
//  UserAuth
//
//  Created by Ian Robinson on 8/1/25.
//

import SwiftUI

struct NewShopView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
//                VStack(alignment: .leading, spacing: 10) {
                    
                    Image("NeighborBite Logoe")
                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                        .frame(height: 180)
//                        .clipped()
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
//                //}
//                .padding()
//                .background(Color(.systemBackground))
//                .cornerRadius(16)
//                .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 4)
//            
            }
        }
    }
}

#Preview {
    NewShopView()
}
