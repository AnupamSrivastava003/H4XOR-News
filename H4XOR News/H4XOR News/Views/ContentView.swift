//
//  ContentView.swift
//  H4XOR News
//
//  Created by SKUBI on 28/01/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
            NavigationView{
                List(networkManager.posts){ post in
                    NavigationLink(destination: DetailView(url: post.url)) {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    }
                }
                .navigationTitle("H4X0R News")
            }
            .onAppear{
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
//    Post(id: "1",title: "Anupam Srivastava"),
//    Post(id: "2",title: "Saher Siddiqui"),
//    Post(id: "3",title: "Unmukt Shukla"),
//    Post(id: "4",title: "Vidushi Wadhva"),
//]
