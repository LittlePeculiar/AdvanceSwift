//
//  CustomNavView.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/5/24.
//

import SwiftUI

// MARK: custom navigationView

struct CustomNavView<Content: View>: View {
    
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        NavigationView {
            CustomNavBarContainerView {
                content
            }
            .navigationBarHidden(true)
        }
        .navigationViewStyle(.stack)
        
    }
}

struct CustomNavView_Previews: PreviewProvider {
    
    static var previews: some View {
        CustomNavView {
            Color.purple.ignoresSafeArea()
        }
    }
}
