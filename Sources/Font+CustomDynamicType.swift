//
//  Font+CustomDynamicType.swift
//  CustomDynamicType
//
//  Created by Giuseppe Travasoni on 01/12/23.
//

import SwiftUI
import UIKit

public extension Font {
    
    static func font(style: UIFont.TextStyle, overrideWeight: UIFont.Weight? = nil) -> Font {
        let size = UIFont.preferredFont(forTextStyle: style).pointSize
        return Font.custom(overrideWeight?.name ?? style.name, size: size, relativeTo: style.swiftUIStyle)
    }
    
}
