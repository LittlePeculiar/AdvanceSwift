//
//  HeaderViewRegular.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/3/24.
//

import SwiftUI

struct HeaderViewRegular: View {
    let title: String
    let description: String?
    let iconName: String?
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            if let description = description {
                Text(description)
                    .font(.callout)
                    .fontWeight(.semibold)
            }
            if let iconName = iconName {
                Image(systemName: iconName)
            }
            
            
            RoundedRectangle(cornerRadius: 5)
                .frame(height: 2)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

struct HeaderViewRegular_Previews: PreviewProvider {
    static var previews: some View {
        HeaderViewRegular(
            title: "Title",
            description: "description",
            iconName: "heart.fill"
        )
    }
}
