//
//  CustomDynamicType.swift
//  CustomDynamicType
//
//  Created by Giuseppe Travasoni on 30/11/23.
//

import UIKit

public struct CustomDynamicType {
    public static func setup(with names: CustomDynamicFontNames) {
        CustomDynamicType_internal.shared.names = names
    }
}
