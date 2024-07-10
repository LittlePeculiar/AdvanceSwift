//
//  NavBarConfiguration.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/9/24.
//

import SwiftUI

struct NavBarConfiguration {

    var backgrounColor: Color?
    
    var showRightButton: Bool
    var rightButtonIconName: String
    var rightButtonAction: (() -> Void)?
    
    init(
        backgrounColor: Color? = Color.blue,
        showRightButton: Bool = false,
        rightButtonIconName: String = "",
        rightButtonAction: ( () -> Void )? = nil
    ) {
        self.backgrounColor = backgrounColor
        self.showRightButton = showRightButton
        self.rightButtonIconName = rightButtonIconName
        self.rightButtonAction = rightButtonAction
    }
}
