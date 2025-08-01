//
//  TestView.swift
//  UserAuth
//
//  Created by Ian Robinson on 7/24/25.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        VStack(spacing: 20) {
            // Logo Header
            HStack {
                Image("logo") // Add your logo image to Assets and name it "logo"
                    .resizable()
                    .frame(width: 30, height: 30)
                Text("NeighborBite")
                    .font(.headline)
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.pink)
            .cornerRadius(10)
            .padding(.top)

            // Our Mission Section
            Button(action: {
                // Add navigation/action here
            }) {
                VStack {
                    
                    Text("🚀 Our Mission")
                   
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                       
                    Text("We work to end food insecurity in marginalized communities by building sustainable systems that connect surplus food with those who need it most—ensuring every person, regardless of identity or circumstance, has access to nourishing meals.")
                        .foregroundColor(.black)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.cyan)
                .cornerRadius(20)
            }

            // About Section
            Button(action: {
                // Add navigation/action here
            }) {
                VStack {
                    Text("")
                    Text("🏡 About NeighborBite")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    Text(" This company is dedicated to working towards mitigating food desserts in Detroit’s marginalized communities. By distributing these restaurants food into food deserted communities that would normally just be thrown away, food waste would be combated. ")
                        .foregroundColor(.black)
                }
                
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.cyan)
                .cornerRadius(20)
            }
            VStack(spacing: 5) {
                Text("Contact us at NeighborBite@gmail.com")
                Text("Or (+1) 313-326-6795")
            }
            Spacer()

            // Contact
            VStack(spacing: 5) {
                Text("Contact us at NeighborBite@gmail.com")
                Text("Or (+1) 313-326-6795")
            }
            .font(.footnote)
            .foregroundColor(.black)
            .padding(.bottom, 20)
        }
        
        .padding()
    }
}


#Preview {
    MainScreen()
}
