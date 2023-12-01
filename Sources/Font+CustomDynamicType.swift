//
//  Font+CustomDynamicType.swift
//  CustomDynamicType
//
//  Created by Giuseppe Travasoni on 01/12/23.
//

import SwiftUI
import UIKit

public extension Font {
    
    static func font(style: Font.TextStyle, overrideWeight: Font.Weight? = nil) -> Font {
        let size = UIFont.preferredFont(forTextStyle: style.UIKitStyle).pointSize
        return Font.custom(overrideWeight?.UIKitWeight.name ?? style.UIKitStyle.name, size: size, relativeTo: style)
    }
    
}
