//
//  AppTabBarView.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/4/24.
//

import SwiftUI

struct AppTabBarView: View {
    
    private let tabs: [Tab] = [.home, .favorites, .profile]
    
    @State private var selection: String = Tab.home.title
    
    var body: some View {
        TabView(selection: $selection) {
            Color.red
                .tabItem {
                    Image(systemName: Tab.home.iconName)
                    Text(Tab.home.title)
                }
            Color.blue
                .tabItem {
                    Image(systemName: Tab.favorites.iconName)
                    Text(Tab.favorites.title)
                }
            Color.purple
                .tabItem {
                    Image(systemName: Tab.profile.iconName)
                    Text(Tab.profile.title)
                }
        }
        
    }
}

struct AppTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabBarView()
    }
}
