//
//  UIFont+CustomDynamicType.swift
//  CustomDynamicType
//
//  Created by Giuseppe Travasoni on 30/11/23.
//

import UIKit

public extension UIFont {
    
    ///Get the desired font style.
    ///
    ///Parameters:
    ///- style: any possible `UIFont.TextStyle` system style (`.largeTitle`, `.title1`, `.title2`, `.title3`, `.headline`, `.subheadline`, `.body`, `.callout`, `.footnote`, `.caption1`, `.caption2`)
    ///- overrideWeight:  (optional)  support any variant of `UIFont.Weight` (`ultraLight`, `thin`, `light`, `regular`, `medium`, `semibold`, `bold`, `heavy`, `black`). Remember that you need to setup the library with corrisponding font name otherwise it will fallback on the regular one.
    static func font(style: UIFont.TextStyle, overrideWeight: UIFont.Weight? = nil) -> UIFont {
        let size = UIFont.preferredFont(forTextStyle: style).pointSize
        let font = UIFont(name: overrideWeight?.name ?? style.name,
                          size: size) ?? UIFont.systemFont(ofSize: size)
        return UIFontMetrics(forTextStyle: style).scaledFont(for: font)
    }
    
}
