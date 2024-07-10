//
//  CustomNavBarContainerView.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/5/24.
//

import SwiftUI

// MARK: the nav bar + content

struct CustomNavBarContainerView<Content: View>: View {
    
    let content: Content
    
    @State var title: String = ""
    @State var subtitle: String? = nil
    @State var showBackButton: Bool = true
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack(spacing: 0) {
            CustomNavBarView(
                title: title,
                subtitle: subtitle,
                showBackButton: showBackButton
            )
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .onPreferenceChange(NavBarTitlePrefKey.self) { title in
            self.title = title
        }
        .onPreferenceChange(NavBarSubtitlePrefKey.self) { title in
            self.subtitle = title
        }
        .onPreferenceChange(NavBarBackButtonShowPrefKey.self) { show in
            self.showBackButton = show
        }
    }
}

struct CustomNavBarContainerView_Previews: PreviewProvider {
    
    static var previews: some View {
        CustomNavBarContainerView {
            ZStack {
                Color.green.ignoresSafeArea()
                Text("To the Batcave")
                    .foregroundColor(.white)
                    .customNavTitle("new title")
                    .customNavSubtitle("subtitle")
                    .customNavBarBackButtonShow(false)
            }
        }
    }
}
