//
//  ScrollViewOffsetPrefKeyBootcamp.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/4/24.
//

import SwiftUI

struct ScrollViewOffsetPrefKey: PreferenceKey {
    static var defaultValue: CGFloat = .zero
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

struct ScrollViewOffsetPrefKeyBootcamp: View {
    
    let navTitle: String = "Known Identities"
    
    @State private var scrollViewOffset: CGFloat = .zero
    
    var body: some View {
        ScrollView {
            VStack {
                titleLayer
                    .opacity(Double(scrollViewOffset) / 63.0)
                    .onScrollViewOffsetChanged { offset in
                        self.scrollViewOffset = offset
                    }
                contentLayer
            }
            .padding()
        }
        .overlay(
            navBarLayer
                .opacity(scrollViewOffset < 40 ? 1.0 : 0)
            , alignment: .top
        )
    }
}

struct ScrollViewOffsetPrefKeyBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewOffsetPrefKeyBootcamp()
    }
}

extension ScrollViewOffsetPrefKeyBootcamp {
    private var titleLayer: some View {
        Text(navTitle)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var contentLayer: some View {
        ForEach(0..<20) { index in
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.red.opacity(0.3))
                .frame(width: 300, height: 200)
            
        }
    }
    
    private var navBarLayer: some View {
        Text(navTitle)
            .font(.largeTitle)
            .frame(maxWidth: .infinity)
            .frame(height: 55)
            .background(Color.blue)
            .foregroundColor(.white)
    }
}
