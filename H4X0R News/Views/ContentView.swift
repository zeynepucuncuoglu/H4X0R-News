//
//  ContentView.swift
//  H4X0R News
//
//  Created by Zeynep Üçüncüoğlu on 8.12.2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("H4XR NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
    
}

#Preview {
    ContentView()
}


