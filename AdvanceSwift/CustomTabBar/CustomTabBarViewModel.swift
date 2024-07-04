//
//  CustomTabBarViewModel.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/4/24.
//

import Foundation

class CustomTabBarViewModel: ObservableObject {
    
    @Published var tabs: [TabBarItem]
    
    init(tabs: [TabBarItem]) {
        self.tabs = tabs
    }
    
}
