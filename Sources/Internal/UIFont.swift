//
//  UIFont.swift
//  CustomDynamicType
//
//  Created by Giuseppe Travasoni on 30/11/23.
//

import UIKit

extension UIFont.TextStyle {
    
    var name: String {
        let font = UIFont.preferredFont(forTextStyle: self)
        return font.weight.name ?? font.fontName
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
