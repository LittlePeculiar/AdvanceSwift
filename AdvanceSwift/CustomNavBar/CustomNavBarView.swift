//
//  CustomNavBarView.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/5/24.
//

import SwiftUI

// MARK: the nav bar

struct CustomNavBarView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var config: NavBarConfiguration = NavBarConfiguration()
    
    let title: String
    let subtitle: String?
    let showBackButton: Bool
    
    var body: some View {
        HStack {
            if showBackButton {
                backButton
            }
            
            Spacer()
            titleSection
            Spacer()
            
            if config.showRightButton {
                rightButton
            }
            

        }
        .padding()
        .accentColor(accentColor)
        .foregroundColor(accentColor)
        .font(.headline)
        .background(
            config.backgrounColor.ignoresSafeArea(edges: .top)
        )
    }
}

struct CustomNavBarView_Previews: PreviewProvider {
    
    static var previews: some View {
        VStack {
            CustomNavBarView(
                title: "ToDo",
                subtitle: nil,
                showBackButton: true
            )
            Spacer()
        }
    }
}

extension CustomNavBarView {
    
    private var titleSection: some View {
        VStack(spacing: 4) {
            Text(title)
                .font(.title)
                .fontWeight(.semibold)
            
            if let subtitle = subtitle {
                Text(subtitle)
            }
        }
    }
    
    private var backButton: some View {
        Button {
            presentationMode.wrappedValue.dismiss()
        } label: {
            Image(systemName: "chevron.left")
        }
    }
    
    private var rightButton: some View {
        Button {
            if let action = config.rightButtonAction {
                action()
            }
            
        } label: {
            Image(systemName: config.rightButtonIconName)
        }
        .opacity(config.showRightButton ? 1 : 0)
    }
    
    private var accentColor: Color {
        if let color = config.backgrounColor, color == .white {
            return .black
        }
        return .white
    }
}
