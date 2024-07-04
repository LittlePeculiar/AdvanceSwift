//
//  AnyTransitionBootcamp.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/3/24.
//

import SwiftUI

struct AnyTransitionBootcamp: View {
    
    @State private var showRectangle: Bool = true
    
    var body: some View {
        VStack {
            Spacer()
            
            if showRectangle {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 250, height: 350)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .transition(.rotating(rotation: 1080))
            }
            
            Spacer()
            
            Text("Bruce Wayne is Batman")
                .withButtonFormating()
                .padding(.horizontal, 40)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 5.0)) {
                        showRectangle.toggle()
                    }
                }
        }
    }
}

struct AnyTransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnyTransitionBootcamp()
    }
}
