//
//  MatchedGeoEffect.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/3/24.
//

// mostly works on geometry shapes - others, like text, images are whacked

import SwiftUI

struct MatchedGeoEffect: View {
    
    let categories: [String] = ["Home", "Popular", "Saved"]
    @State private var selected: String = ""
    @Namespace private var namespace
    
    var body: some View {
        HStack {
            ForEach(categories, id: \.self) { category in
                ZStack {
                    if selected == category {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.red)
                            .matchedGeometryEffect(
                                id: "category_background",
                                in: namespace
                            )
                            .frame(width: 50, height: 2)
                            .offset(y: 10)
                    }
                    
                    Text(category)
                        .foregroundColor(selected == category ? .red : .black)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .onTapGesture {
                    withAnimation(.spring()) {
                        selected = category
                    }
                }
            }
        }
        .padding()
    }
}

struct MatchedGeoEffect_Previews: PreviewProvider {
    static var previews: some View {
        MatchedGeoEffect()
    }
}
