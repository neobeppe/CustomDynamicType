//
//  CustomDynamicType.swift
//  CustomDynamicType
//
//  Created by Giuseppe Travasoni on 30/11/23.
//

import UIKit

/// Static struct to be used  to initialize library
public struct CustomDynamicType {
    
    /// Setup library before using UILabel or Font method, tipically in  your AppDelegate's `application(_:didFinishLaunchingWithOptions:)` method
    ///
    /// Parameters
    /// - names: ``CustomDynamicFontNames`` required to setup library with correct font names
    public static func setup(with names: CustomDynamicFontNames) {
        CustomDynamicType_internal.shared.names = names
    }
}
