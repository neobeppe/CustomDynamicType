//
//  UIFont.swift
//  CustomDynamicType
//
//  Created by Giuseppe Travasoni on 30/11/23.
//

import UIKit
import SwiftUI

extension UIFont.TextStyle {
    
    var name: String {
        let font = UIFont.preferredFont(forTextStyle: self)
        return font.weight.name ?? font.fontName
    }
    
    var swiftUIStyle: Font.TextStyle {
        switch self {
        case .largeTitle: return .largeTitle
        case .title1: return .title
        case .title2: return .title2
        case .title3: return .title2
        case .headline: return .headline
        case .subheadline: return .subheadline
        case .body: return .body
        case .callout: return .callout
        case .footnote: return .footnote
        case .caption1: return .caption
        case .caption2: return .caption2
        default: return .body
        }
    }
}

extension UIFont.Weight {
    
    var name: String? {
        switch self {
        case .ultraLight:
            return CustomDynamicType_internal.shared.names?.ultraLight
        case .thin:
            return CustomDynamicType_internal.shared.names?.thin
        case .light:
            return CustomDynamicType_internal.shared.names?.light
        case .regular:
            return CustomDynamicType_internal.shared.names?.regular
        case .medium:
            return CustomDynamicType_internal.shared.names?.medium
        case .semibold:
            return CustomDynamicType_internal.shared.names?.semibold
        case .bold:
            return CustomDynamicType_internal.shared.names?.bold
        case .heavy:
            return CustomDynamicType_internal.shared.names?.heavy
        case .black:
            return CustomDynamicType_internal.shared.names?.black
        default:
            return nil
        }
    }
}


extension UIFont {

    var weight: UIFont.Weight {
        guard let attributes = fontDescriptor.object(forKey: .traits) as? NSDictionary,
              let weight = (attributes[UIFontDescriptor.TraitKey.weight] as? NSNumber)?.floatValue else {
            return UIFont.Weight(rawValue: UIFont.Weight.regular.rawValue)
        }
        return UIFont.Weight(rawValue: CGFloat(weight))
    }
}
