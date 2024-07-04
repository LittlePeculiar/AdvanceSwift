//
//  ViewBuilderBootcamp.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/3/24.
//

import SwiftUI

struct ViewBuilderBootcamp: View {
    var body: some View {
        VStack {
            HeaderViewGeneric(title: "Soccer") {
                HStack {
                    Image(systemName: "figure.soccer")
                    Image(systemName: "figure.soccer")
                }
            }
            HeaderViewGeneric(title: "Soccer") {
                HStack {
                    Image(systemName: "figure.soccer")
                    Image(systemName: "figure.soccer")
                }
            }
            
            LocalViewBuilder(type: .three)
            
            Spacer()
        }
    }
}

struct ViewBuilderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewBuilderBootcamp()
    }
}
