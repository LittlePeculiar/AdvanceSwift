//
//  AnimateableDataBootcamp.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/3/24.
//

import SwiftUI

struct AnimateableDataBootcamp: View {
    
    @State private var animate: Bool = false
    
    var body: some View {
        ZStack {
            PacManAnimated(offset: animate ? 20 : 0)
                .frame(width: 250, height: 250)
        }
        .onAppear {
            withAnimation(.easeInOut.repeatForever()) {
                animate.toggle()
            }
        }
    }
}

struct AnimateableDataBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimateableDataBootcamp()
    }
}
