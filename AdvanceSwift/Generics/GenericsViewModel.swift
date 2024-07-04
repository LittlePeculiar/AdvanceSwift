//
//  GenericsViewModel.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/3/24.
//

import Foundation

class GenericsViewModel: ObservableObject {
    @Published var data = GenericModel(info: "hello world")
    
    
    func removeData() {
        data.removeInfo()
    }
}
