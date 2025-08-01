//
//  ContentView.swift
//  UserAuth
//
//  Created by Ian Robinson on 7/1/25.
//

import SwiftUI

struct ContactView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var message = ""
    @State private var showingAlert = false

    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                
                Text("Need help or have feedback?")
                    .font(.headline)
                    .padding(.bottom, 5)
                
                TextField("Your Name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                TextField("Email Address", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.emailAddress)

                TextEditor(text: $message)
                    .frame(height: 120)
                    .padding(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray.opacity(0.4), lineWidth: 1)
                    )

                Button(action: {
                    sendMessage()
                }) {
                    Text("Send")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding(.top, 10)
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Message Sent"), message: Text("Thank you for contacting us!"), dismissButton: .default(Text("OK")))
                }

                Spacer()
            }
            .padding()
            .navigationTitle("Contact Us")
            .navigationBarTitleDisplayMode(.inline)
        }
    }

    private func sendMessage() {
        // Add logic to send message to your backend or email system
        print("Name: \(name)\nEmail: \(email)\nMessage: \(message)")
        showingAlert = true
        name = ""
        email = ""
        message = ""
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
