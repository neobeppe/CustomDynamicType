//
//  UILabel+CustomDynamicType.swift
//  CustomDynamicType
//
//  Created by Giuseppe Travasoni on 30/11/23.
//

import UIKit

public extension UILabel {
    
    func setFont(style: UIFont.TextStyle, overrideWeight: UIFont.Weight? = nil) {
        self.font = UIFont.font(style: style, overrideWeight: overrideWeight)
    }
    
}
