//
//  CustomTabBarContainerView.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/4/24.
//

import SwiftUI

struct CustomTabBarContainerView<Content: View>: View {
    
    @Binding var selection: TabBarItem
    let content: Content
    
    @State private var tabs: [TabBarItem] = []
    
    init(
        selection: Binding<TabBarItem>,
        @ViewBuilder content: () -> Content
    ) {
        self._selection = selection
        self.content = content()
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            content
                .ignoresSafeArea()
            
            CustomTabBarView(tabs: tabs, selection: $selection, localSelection: selection)
        }
        .onPreferenceChange(TabBarItemPrefKey.self) { tabs in
            self.tabs = tabs
        }
    }
}

struct CustomTabBarContainerView_Previews: PreviewProvider {
    
    static var previews: some View {
        CustomTabBarContainerView(selection: .constant(.home)) {
            Color.red
        }
    }
}
