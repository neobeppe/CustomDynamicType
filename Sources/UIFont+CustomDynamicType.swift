//
//  UIFont+CustomDynamicType.swift
//  CustomDynamicType
//
//  Created by Giuseppe Travasoni on 30/11/23.
//

import UIKit

public extension UIFont {
    
    static func font(style: UIFont.TextStyle, overrideWeight: UIFont.Weight? = nil) -> UIFont {
        let size = UIFont.preferredFont(forTextStyle: style).pointSize
        let font = UIFont(name: overrideWeight?.name ?? style.name,
                          size: size) ?? UIFont.systemFont(ofSize: size)
        return UIFontMetrics(forTextStyle: style).scaledFont(for: font)
    }
    
}
