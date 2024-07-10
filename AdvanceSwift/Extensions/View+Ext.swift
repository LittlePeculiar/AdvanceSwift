//
//  View+Ext.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/3/24.
//

import SwiftUI

extension View {
    
    func tabBarItem(tab: TabBarItem, selection: Binding<TabBarItem>) -> some View {
        modifier(TabBarItemViewModifier(tab: tab, selection: selection))
    }
    
    func onScrollViewOffsetChanged(action: @escaping (_ offset: CGFloat) -> Void) -> some View {
        self
            .background(
                GeometryReader { geo in
                    Text("")
                        .preference(
                            key: ScrollViewOffsetPrefKey.self,
                            value: geo.frame(in: .global).minY
                        )
                }
            )
            .onPreferenceChange(ScrollViewOffsetPrefKey.self, perform: { offset in
                action(offset)
            })
    }
    func withButtonFormating(backgroundColor: Color = .blue) -> some View {
        modifier(ButtonViewModifier(backgroundColor: backgroundColor))
    }
    
    func withPressableStyle(scaleValue: CGFloat = 0.9) -> some View {
        buttonStyle(PressableButtonStyle(scaleValue: scaleValue))
    }
    
    func customTitle(_ text: String) -> some View {
        preference(key: CustomTitlePreferenceKey.self, value: text)
    }
    
    func updateRectangleGeoSize(_ size: CGSize) -> some View {
        preference(key: RectangleGeoSizePrefKey.self, value: size)
    }
    
    
}

// MARK: Nav bar

extension View {
    func customNavTitle(_ title: String) -> some View {
        preference(key: NavBarTitlePrefKey.self, value: title)
    }
    
    func customNavSubtitle(_ title: String?) -> some View {
        preference(key: NavBarSubtitlePrefKey.self, value: title)
    }
    
    func customNavBarBackButtonShow(_ show: Bool) -> some View {
        preference(key: NavBarBackButtonShowPrefKey.self, value: show)
    }
    
    func customNavBarItems(
        title: String = "",
        subTitle: String? = nil,
        show: Bool = true
    ) -> some View {
        self
            .customNavTitle(title)
            .customNavSubtitle(subTitle)
            .customNavBarBackButtonShow(show)
    }
}
