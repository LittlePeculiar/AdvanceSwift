//
//  MatchedGeoEffectBootcamp.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/3/24.
//

import SwiftUI

struct MatchedGeoEffectBootcamp: View {
    
    @State private var isClicked: Bool = false
    @Namespace private var namespace
    
    var body: some View {
        VStack {
            
            if !isClicked {
                RoundedRectangle(cornerRadius: 25)
                    .matchedGeometryEffect(
                        id: "rectangle",
                        in: namespace
                    )
                    .frame(width: 100, height: 100)
            }
            
                
            Spacer()
            
            if isClicked {
                RoundedRectangle(cornerRadius: 25)
                    .matchedGeometryEffect(
                        id: "rectangle",
                        in: namespace
                    )
                    .frame(width: 200, height: 200)
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red)
        .onTapGesture {
            withAnimation(.easeInOut) {
                isClicked.toggle()
            }
        }
    }
}

struct MatchedGeoEffectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        MatchedGeoEffectBootcamp()
    }
}
