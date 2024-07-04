//
//  CustomCurvesBootcamp.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/3/24.
//

import SwiftUI

struct CustomCurvesBootcamp: View {
    var body: some View {
        ZStack {
            WaterShape()
                .fill(
                    LinearGradient(
                        colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1))],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .ignoresSafeArea()
        }
    }
}

struct CustomCurvesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        CustomCurvesBootcamp()
    }
}
