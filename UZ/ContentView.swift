//
//  ContentView.swift
//  UZ
//
//  Created by Filip Chmielewski on 09/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Hello, world!")
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            HowToGetThereView()
                .tabItem {
                    Label("More", systemImage: "ellipsis")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
