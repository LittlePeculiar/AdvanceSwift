//
//  ButtonViewModifier.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/3/24.
//

import SwiftUI

struct ButtonViewModifier: ViewModifier {
    let backgroundColor: Color
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .cornerRadius(10)
            .shadow(radius: 10)
    }
}
