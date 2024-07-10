//
//  CustomNavLink.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/9/24.
//

import SwiftUI

// MARK: custom navigationLink

struct CustomNavLink<Label: View, Destination: View>: View {
    
    let destination: Destination
    let label: Label
    
    init(destination: Destination, @ViewBuilder label: () -> Label) {
        self.destination = destination
        self.label = label()
    }
    
    var body: some View {
        NavigationLink(
            destination:
                CustomNavBarContainerView(content: {
                destination
            })
            .navigationBarHidden(true)
        ) {
            label
        }
    }
}

struct CustomNavLink_Previews: PreviewProvider {
    
    static var previews: some View {
        CustomNavView {
            CustomNavLink(destination: Text("Destination")) {
                Text("Click Me")
            }
        }
    }
}
