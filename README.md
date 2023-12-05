
# CustomDynamicType -  Bridging Custom Fonts and Accessibility in iOS

[![Version](https://img.shields.io/cocoapods/v/CustomDynamicType.svg?style=flat)](http://cocoapods.org/pods/CustomDynamicType) 
[![License](https://img.shields.io/cocoapods/l/CustomDynamicType.svg?style=flat)](https://github.com/neobeppe/CustomDynamicType/blob/main/LICENSE.md)
[![Swift Compatibility](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fneobeppe%2FCustomDynamicType%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/neobeppe/CustomDynamicType)
[![Platform Compatibility](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fneobeppe%2FCustomDynamicType%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/neobeppe/CustomDynamicType)



![Banner](Media/Banner.png?raw=true)

## Introduction
Welcome to CustomDynamicType, a versatile Swift library designed to seamlessly integrate custom fonts into iOS Dynamic Type. This library is not just a means to enhance your app's aesthetic appeal with personalized fonts; it's a commitment to inclusivity. 

This solution is tailored for both UIKit and SwiftUI, providing a smooth and adaptable experience across different iOS development environments. 

With CustomDynamicType, you can now ensure that your custom fonts fully support and embrace Apple's extensive accessibility features.


Whether you're building a new app or refining an existing one, CustomDynamicType is your gateway to creating a more accessible and visually appealing iOS application. Join us in redefining the boundaries of design and accessibility in the iOS ecosystem.

## Usage

Integrating CustomDynamicType into your iOS application is straightforward, allowing you to use custom fonts while fully supporting accessibility. Follow these steps to set it up:

### Step 1: Define Your Custom Fonts

First, define the custom fonts for your application. CustomDynamicType supports various font weights:

- `ultraLight`: Optional, for ultra light font variant.
- `thin`: Optional, for thin font variant.
- `light`: Optional, for light font variant.
- `regular`: **Required**, for regular font weight.
- `medium`: Optional, for medium font variant.
- `semibold`: **Required**, for semi-bold font variant.
- `bold`: Optional, for bold font variant.
- `heavy`: Optional, for heavy font variant.
- `black`: Optional, for black font variant.

Ensure these fonts are included in your project and configured in your application’s Info.plist, if it's the first time integrating a custom font follow [Apple documentation](https://developer.apple.com/documentation/uikit/text_display_and_fonts/adding_a_custom_font_to_your_app).

### Step 2: Initialize CustomDynamicType

In your AppDelegate's `application(_:didFinishLaunchingWithOptions:)` method, initialize CustomDynamicType:

```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    let fontNames = CustomDynamicFontNames(
        ultraLight: "YourFontName-UltraLight",
        thin: "YourFontName-Thin",
        light: "YourFontName-Light",
        regular: "YourFontName-Regular", // Required
        medium: "YourFontName-Medium",
        semibold: "YourFontName-SemiBold", // Required
        bold: "YourFontName-Bold",
        heavy: "YourFontName-Heavy",
        black: "YourFontName-Black"
    )
    CustomDynamicType.setup(with: fontNames)
    
    return true
}
```

Replace `"YourFontName"` with your actual font names. `regular` and `semibold` are required because Apple default implementation relays on those weights, others are optional.

### UIKit Integration

Apply custom fonts to UILabels easily. Example:

```swift
let label = UILabel()
label.setFont(style: .largeTitle)

let boldLabel = UILabel()
boldLabel.setFont(style: .body, overrideWeight: .bold)
```

In these examples, `setFont(style:overrideWeight:)` is used to apply the desired font style to each UILabel. `overrideWeight` parameter is optional and support any variant of `UIFont.Weight` (`ultraLight`, `thin`, `light`, `regular`, `medium`, `semibold`, `bold`, `heavy`, `black`) but remember that you need to setup the library with corrisponding font name otherwise it will fallback on the regular one.

### SwiftUI Integration

Apply custom fonts to Text views in SwiftUI. Example:

```swift
Text("Title text")
    .font(Font.font(style: .largeTitle))
Text("Another text but for the body")
    .font(Font.font(style: .body, overrideWeight: .bold))
```

In SwiftUI, you use `Font.font(style:overrideWeight:)` to set the font style and optional weight for your Text views. `overrideWeight` parameter is optional and support any variant of `Font.Weight` (`ultraLight`, `thin`, `light`, `regular`, `medium`, `semibold`, `bold`, `heavy`, `black`) but remember that you need to setup the library with corrisponding font name otherwise it will fallback on the regular one.

By incorporating these methods into your iOS applications, you can maintain a consistent and accessible font style across both UIKit and SwiftUI platforms. CustomDynamicType ensures that your custom fonts are not just visually appealing but also fully compatible with Apple's accessibility features.

![Animation](Media/Dynamic.gif?raw=true)

## Documentation

Full documentation is availbale at [this link](https://neobeppe.github.io/CustomDynamicType/documentation/customdynamictype/)

## Installation

#### [Swift Package Manager](https://github.com/apple/swift-package-manager)

Add dependency to `Package.swift` file.

```swift
  dependencies: [
    .package(url: "https://github.com/neobeppe/CustomDynamicType.git", .upToNextMajor(from: "1.0.0"))
  ]
```

#### [CocoaPods](http://cocoapods.org)
CustomDynamicType is available through CocoaPods. To install it, simply add the following line to your Podfile:

```ruby
pod 'CustomDynamicType'
```

## License

CustomDynamicType is available under the MIT license. See the LICENSE file for more info.
