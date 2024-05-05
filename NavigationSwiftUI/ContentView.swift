//
//  ContentView.swift
//  NavigationSwiftUI
//
//  Created by Sajith on 2024-05-06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "house")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.blue)
                    .aspectRatio(contentMode: .fit)
                Text("Home screen")
                    .font(.title)
                    .padding()
                
                NavigationLink(destination: ProfileView()) {
                    Text("Navigate to Profile")
                        .frame(width: 200, height: 50, alignment: .center)
                        .background(Color.pink)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .navigationTitle("Home")
        }
    }
}

struct ProfileView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.blue)
                .aspectRatio(contentMode: .fit)
            Text("Profile screen")
                .font(.title)
                .padding()
            
            NavigationLink(destination: ContentView()) {
                Text("Navigate to Home")
                    .frame(width: 200, height: 50, alignment: .center)
                    .background(Color.pink)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .navigationTitle("Profile")
    }
}


#Preview {
    ContentView()
}
