//
//  NavigationController+Ext.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/9/24.
//

import UIKit

extension UINavigationController {
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        interactivePopGestureRecognizer?.delegate =  nil
    }
}
