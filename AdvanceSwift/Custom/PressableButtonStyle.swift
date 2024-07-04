//
//  PressableButtonStyle.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/3/24.
//

import SwiftUI

struct PressableButtonStyle: ButtonStyle {
    
    let scaleValue: CGFloat
    
    init(scaleValue: CGFloat) {
        self.scaleValue = scaleValue
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? scaleValue : 1.0)
            .brightness(configuration.isPressed ? 0.05 : 0)
            //.opacity(configuration.isPressed ? 0.9 : 1.0)
    }
    
}
