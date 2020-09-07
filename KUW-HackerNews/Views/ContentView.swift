//
//  ContentView.swift
//  KUW-HackerNews
//
//  Created by Aaryaman Saini on 06/09/20.
//  Copyright © 2020 Aaryaman Saini. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    init() {
        
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .font : UIFont( name: "HelveticaNeue-Bold", size: 28)!]
        
        
    }
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        
                    }
                    Text(post.title)
                }
            }
            .navigationBarTitle("KeepUpWith Hacker News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//
//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bonjour"),
//    Post(id: "3", title: "Hola")
//]
