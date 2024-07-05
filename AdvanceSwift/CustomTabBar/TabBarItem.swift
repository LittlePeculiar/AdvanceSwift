//
//  TabBarItem.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/4/24.
//

import SwiftUI

enum TabBarItem: String, CaseIterable {
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
    
    var color: Color {
        switch self {
        case .home: return .red
        case .favorites: return .blue
        case .profile: return .green
        }
    }
}

let defaultTabs: [TabBarItem] = [.home, .favorites, .profile]

//struct TabBarItem: Hashable {
//    let iconName: String
//    let title: String
//    let color: Color
//}

