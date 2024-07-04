//
//  PreferenceKeyBootcamp.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/3/24.
//

import SwiftUI

struct PreferenceKeyBootcamp: View {
    
    @State private var text: String = "Bruce Wayne"
    
    var body: some View {
        NavigationView {
            VStack {
                SecondaryScreen(text: text)
                    .navigationTitle("My Navigation")
            }
            .onPreferenceChange(CustomTitlePreferenceKey.self) { value in
                self.text = value
            }
        }
        
    }
}

struct SecondaryScreen: View {
    let text: String
    @State private var newValue: String = ""
    
    var body: some View {
        Text(text)
            .onAppear {
                fetchData()
            }
            .customTitle(newValue)
    }
    
    func fetchData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.newValue = "Hello, Master Bruce"
        }
    }
}

struct CustomTitlePreferenceKey: PreferenceKey {
    static var defaultValue: String = ""
    
    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }
}
struct PreferenceKeyBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PreferenceKeyBootcamp()
    }
}
