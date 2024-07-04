//
//  GenericsBootcamp.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/3/24.
//

import SwiftUI

struct GenericsBootcamp: View {
    
    @StateObject private var viewModel = GenericsViewModel()
    
    var body: some View {
        VStack {
            GenericView(
                content: Text("testing:"),
                title: "My Generic View")
        }
    }
}

struct GenericView<T: View>: View {
    let content: T
    let title: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title)
            
            content
        }
    }
}

struct GenericsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GenericsBootcamp()
    }
}
