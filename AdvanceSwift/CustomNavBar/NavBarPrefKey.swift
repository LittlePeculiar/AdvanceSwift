//
//  NavBarPrefKey.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/9/24.
//

import SwiftUI

struct NavBarTitlePrefKey: PreferenceKey {
    static var defaultValue: String = ""
    
    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }
}

struct NavBarSubtitlePrefKey: PreferenceKey {
    static var defaultValue: String? = nil
    
    static func reduce(value: inout String?, nextValue: () -> String?) {
        value = nextValue()
    }
}

struct NavBarBackButtonShowPrefKey: PreferenceKey {
    static var defaultValue: Bool = true
    
    static func reduce(value: inout Bool, nextValue: () -> Bool) {
        value = nextValue()
    }
}

