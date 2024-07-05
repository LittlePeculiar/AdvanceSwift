//
//  TabBarItemViewModifier.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/4/24.
//

import SwiftUI

struct TabBarItemViewModifier: ViewModifier {
    let tab: TabBarItem
    @Binding var selection: TabBarItem
    
    func body(content: Content) -> some View {
        content
            .opacity(selection == tab ? 1.0 : 0.0)
            .preference(key: TabBarItemPrefKey.self, value: [tab])
    }
}


