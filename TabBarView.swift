//
//  TabBarView.swift
//  Cinemate
//
//  Created by Lochan on 15.03.2024.
//

import SwiftUI

struct TabBarView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
        UITabBar.appearance().barTintColor =  UIColor.white
        UITabBar.appearance().unselectedItemTintColor = UIColor.darkGray
    }
    
    var body: some View {
        
        TabView {
            DiscoverView()
                .tabItem {
                    Image(systemName: "arrowtriangle.up.fill")
                    Text("Discover")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
         
            CategoriesView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Categories")
                }
         
            FavoritesView()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Favorites")
                }
        }
        .accentColor(Color.appColor.torchRed)
    }
}

