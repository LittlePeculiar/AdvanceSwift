//
//  CustomTabBarView.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/4/24.
//

import SwiftUI

struct CustomTabBarView: View {
    @StateObject var viewModel: CustomTabBarViewModel
    @Binding var selection: TabBarItem
    
    var body: some View {
        HStack {
            ForEach(viewModel.tabs, id: \.self) { tab in
                tabView(tab: tab)
                    .onTapGesture {
                        switchTo(tab: tab)
                    }
            }
        }
        .padding(6)
        .background(Color.white.ignoresSafeArea(edges: .bottom))
        
    }
}

struct CustomTabBarView_Previews: PreviewProvider {
    
    @State static var selected = tabs[0]
    
    static var previews: some View {
        VStack {
            Spacer()
            CustomTabBarView(
                viewModel: CustomTabBarViewModel(tabs: tabs),
                selection: $selected
            )
        }
    }
}

extension CustomTabBarView {
    private func tabView(tab: TabBarItem) -> some View {
        VStack {
            Image(systemName: tab.iconName)
                .font(.subheadline)
            Text(tab.title)
                .font(.system(size: 10, weight: .semibold, design: .rounded))
        }
        .foregroundColor(selection == tab ? tab.color : Color.gray)
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity)
        .background(selection == tab ? tab.color.opacity(0.2) : Color.clear)
        .cornerRadius(10)
    }
    
    private func switchTo(tab: TabBarItem) {
        withAnimation(.easeInOut) {
            selection = tab
        }
    }
}
