//
//  ButtonStyleBootcamp.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/3/24.
//

import SwiftUI

struct ButtonStyleBootcamp: View {
    var body: some View {
        VStack {
            Button {
                
            } label: {
                Text("Try Me!")
                    .font(.headline)
                    .withButtonFormating(backgroundColor: .blue)
            }
            .withPressableStyle()
            .padding(40)
        }
    }
}

struct ButtonStyleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleBootcamp()
    }
}
