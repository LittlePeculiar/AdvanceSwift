//
//  TabBarItemPrefKey.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/4/24.
//

import SwiftUI

struct TabBarItemPrefKey: PreferenceKey {
    static var defaultValue: [TabBarItem] = []
    
    static func reduce(value: inout [TabBarItem], nextValue: () -> [TabBarItem]) {
        value += nextValue()
    }
}
