//
//  CustomShapesBootcamp.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/3/24.
//

import SwiftUI

struct CustomShapesBootcamp: View {
    var body: some View {
        ZStack {
            Diamond()
                .frame(width: 300, height: 300)
        }
    }
}

struct CustomShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        CustomShapesBootcamp()
    }
}
