//
//  ViewModifierBootcamp.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/3/24.
//

import SwiftUI

struct ViewModifierBootcamp: View {
    var body: some View {
        VStack {
            
            Text("I miss Bruce Wayne!")
                .font(.headline)
                .withButtonFormating(backgroundColor: .blue)
                .padding()
        }
        
    }
}

struct ViewModifierBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifierBootcamp()
    }
}
