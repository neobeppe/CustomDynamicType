//
//  Font+CustomDynamicType.swift
//  CustomDynamicType
//
//  Created by Giuseppe Travasoni on 01/12/23.
//

import SwiftUI
import UIKit

public extension Font {
    
    ///Get the desired font style.
    ///
    ///Parameters:
    ///- style: any possible `Font.TextStyle` system style (`.largeTitle`, `.title`, `.title2`, `.title3`, `.headline`, `.subheadline`, `.body`, `.callout`, `.footnote`, `.caption`, `.caption2`)
    ///- overrideWeight:  (optional)  support any variant of `Font.Weight` (`ultraLight`, `thin`, `light`, `regular`, `medium`, `semibold`, `bold`, `heavy`, `black`). Remember that you need to setup the library with corrisponding font name otherwise it will fallback on the regular one.
    static func font(style: Font.TextStyle, overrideWeight: Font.Weight? = nil) -> Font {
        let size = UIFont.preferredFont(forTextStyle: style.UIKitStyle).pointSize
        return Font.custom(overrideWeight?.UIKitWeight.name ?? style.UIKitStyle.name, size: size, relativeTo: style)
    }
    
}
