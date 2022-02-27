//
//  ContentView.swift
//  tabView
//
//  Created by Basma Said on 20/02/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeTab()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
               
            SearchTab()
                .tabItem{
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            CartTab()
                .tabItem{
                    Image(systemName: "cart")
                    Text("Cart")
                }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
