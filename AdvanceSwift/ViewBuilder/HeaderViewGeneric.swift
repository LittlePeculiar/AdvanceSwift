//
//  HeaderViewGeneric.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/3/24.
//

import SwiftUI

struct HeaderViewGeneric<Content: View>: View {
    let title: String
    let content: Content
    
    init(title: String, @ViewBuilder content: () -> Content) {
        self.title = title
        self.content = content()
    }
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            content
            
            RoundedRectangle(cornerRadius: 5)
                .frame(height: 2)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

struct LocalViewBuilder: View {
    enum ViewType {
        case one, two, three
    }
    
    let type: ViewType
    
    var body: some View {
        VStack {
            headerSection
        }
        
    }
    
    @ViewBuilder private var headerSection: some View {
        switch type {
        case .one: viewOne
        case .two: viewTwo
        case .three: viewThree
        }
    }
    
    private var viewOne: some View {
        Text("Type One")
    }
    
    private var viewTwo: some View {
        VStack {
            Text("Type Two")
            Image(systemName: "figure.soccer")
        }
    }
    
    private var viewThree: some View {
        Image(systemName: "figure.soccer")
    }
}

struct HeaderViewGeneric_Previews: PreviewProvider {
    static var previews: some View {
        HeaderViewGeneric(title: "Generic Title") {
            Text("my content")
        }
    }
}
