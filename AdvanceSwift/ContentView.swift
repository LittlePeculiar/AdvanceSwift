//
//  ContentView.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/3/24.
//

import SwiftUI

struct ContentView: View {
    @State var selected = tabs[0]
    
    var body: some View {
        VStack {
            Spacer()
            CustomTabBarView(
                viewModel: CustomTabBarViewModel(tabs: tabs),
                selection: $selected)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
