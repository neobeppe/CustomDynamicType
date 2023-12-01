//
//  CustomDynamicFontNames.swift
//  CustomDynamicFontNames
//
//  Created by Giuseppe Travasoni on 30/11/23.
//

import Foundation

public struct CustomDynamicFontNames {
    
    let ultraLight: String?
    let thin: String?
    let light: String?
    let regular: String
    let medium: String?
    let semibold: String
    let bold: String?
    let heavy: String?
    let black: String?
    
    public init(ultraLight: String? = nil, thin: String? = nil, light: String? = nil, regular: String, medium: String? = nil, semibold: String, bold: String? = nil, heavy: String? = nil, black: String? = nil) {
        
        self.ultraLight = ultraLight
        self.thin = thin
        self.light = light
        self.regular = regular
        self.medium = medium
        self.semibold = semibold
        self.bold = bold
        self.heavy = heavy
        self.black = black
    }
}
