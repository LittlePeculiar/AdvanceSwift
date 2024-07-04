//
//  GenericModel.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/3/24.
//

import Foundation

struct GenericModel<T> {
    let info: T?
    
    func removeInfo() -> GenericModel {
        GenericModel(info: nil)
    }
}
