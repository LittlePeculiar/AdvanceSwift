//
//  TabBarItem.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/4/24.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case home, favorites, profile
    
    var title: String {
        switch self {
        case .home: return "Home"
        case .favorites: return "Favorites"
        case .profile: return "Profile"
        }
    }
    
    var iconName: String {
        switch self {
        case .home: return "house"
        case .favorites: return "heart"
        case .profile: return "person"
        }
    }
}

struct TabBarItem: Hashable {
    let iconName: String
    let title: String
    let color: Color
}

// dummy data
let tabs = [
    TabBarItem(
        iconName: Tab.home.iconName,
        title: Tab.home.title,
        color: .red
    ),
    TabBarItem(
        iconName: Tab.favorites.iconName,
        title: Tab.favorites.title,
        color: .blue
    ),
    TabBarItem(
        iconName: Tab.profile.iconName,
        title: Tab.profile.title,
        color: .green
    )
]
