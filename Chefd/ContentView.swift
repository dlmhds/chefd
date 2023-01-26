//
//  ContentView.swift
//  Chefd
//
//  Created by Malachi Wong on 1/23/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Group{
                HomeView()
                    .tabItem{
                        Image(systemName: "house")
                    }
                SearchViewParent()
                    .tabItem{
                        Image(systemName:"magnifyingglass")
                    }
                AddView()
                    .tabItem{
                        Image(systemName: "plus.circle")
                    }
                ActivityView()
                    .tabItem{
                        Image(systemName: "bolt.fill")
                    }
                ProfileView()
                    .tabItem{
                        Image(systemName: "person.crop.circle")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.colorScheme, .light)
    }
}
