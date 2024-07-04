//
//  GeoPreferenceKeyBootcamp.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/3/24.
//

import SwiftUI

struct GeoPreferenceKeyBootcamp: View {
    
    @State private var rectSize: CGSize = .zero
    
    var body: some View {
        VStack {
            
            Text("Hello, Bruce")
                .frame(height: rectSize.height)
                .font(.title)
                .foregroundColor(.white)
                .background(Color.blue)
                .padding()
            
            Spacer()
            
            HStack {
                Rectangle()
                
                GeometryReader { geo in
                    Rectangle()
                        .updateRectangleGeoSize(geo.size)
                }
                
                Rectangle()
            }
            .frame(height: 55)
        }
        .onPreferenceChange(RectangleGeoSizePrefKey.self) { size in
            self.rectSize = size
        }
    }
}

struct RectangleGeoSizePrefKey: PreferenceKey {
    static var defaultValue: CGSize = .zero
    
    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
        value = nextValue()
    }
}

struct GeoPreferenceKeyBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GeoPreferenceKeyBootcamp()
    }
}
