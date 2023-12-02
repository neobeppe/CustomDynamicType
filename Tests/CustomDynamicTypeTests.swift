//
//  CustomDynamicTypeTests.swift
//  CustomDynamicTypeTests
//
//  Created by Giuseppe Travasoni on 30/11/23.
//

import XCTest
@testable import CustomDynamicType

final class CustomDynamicTypeTests: XCTestCase {
    
    override func setUpWithError() throws {
        let fontNames = CustomDynamicFontNames(regular: "NewYorkMedium-Regular",
                                               medium: "NewYorkMedium-Medium",
                                               semibold: "NewYorkMedium-Semibold",
                                               bold: "NewYorkMedium-Bold")
        CustomDynamicType.setup(with: fontNames)
    }
    
    func testSetup() throws {
        XCTAssert(CustomDynamicType_internal.shared.names?.regular == "NewYorkMedium-Regular")
        XCTAssert(CustomDynamicType_internal.shared.names?.medium == "NewYorkMedium-Medium")
        XCTAssert(CustomDynamicType_internal.shared.names?.semibold == "NewYorkMedium-Semibold")
        XCTAssert(CustomDynamicType_internal.shared.names?.bold == "NewYorkMedium-Bold")
    }
    
    func testWeightNames() throws {
        XCTAssert(UIFont.Weight.regular.name == "NewYorkMedium-Regular")
        XCTAssert(UIFont.Weight.medium.name == "NewYorkMedium-Medium")
        XCTAssert(UIFont.Weight.semibold.name == "NewYorkMedium-Semibold")
        XCTAssert(UIFont.Weight.bold.name == "NewYorkMedium-Bold")
        XCTAssertNil(UIFont.Weight.ultraLight.name)
        XCTAssertNil(UIFont.Weight.thin.name)
        XCTAssertNil(UIFont.Weight.light.name)
        XCTAssertNil(UIFont.Weight.heavy.name)
        XCTAssertNil(UIFont.Weight.black.name)
        XCTAssertNil(UIFont.Weight(rawValue: -1).name)
    }
    
    func testTextSyleName() throws {
        XCTAssert(UIFont.TextStyle.body.name == "NewYorkMedium-Regular")
        XCTAssert(UIFont.TextStyle.largeTitle.name == "NewYorkMedium-Regular")
    }
}
