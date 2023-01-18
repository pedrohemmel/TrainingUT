//
//  StringUtilsTests.swift
//  TrainingUTTests
//
//  Created by Pedro henrique Dias hemmel de oliveira souza on 18/01/23.
//

import XCTest
@testable import TrainingUT

final class StringUtilsTests: XCTestCase {
    func testeIsValidEmail() {
        let rightEmail = "pedro@gmail.com"
        let rightValue = rightEmail.isValidEmail()
        
        let wrongEmail = "pedro"
        let wrongValue = wrongEmail.isValidEmail()
        
//        XCTAssert(value == true)
//        XCTAssertTrue(wrongValue, "Não é um email válido") //Another way to test
        XCTAssertTrue(rightValue, "This is not a valid email") //Another way to test
    }
    
    func testRemoveWhiteSpace() {
        let text = "Hello World"
        let newText = text.removeWhitespace()
        
        XCTAssertFalse(newText == text, "The function didn't work")
    }
    
    func testeReplace() {
        let text = "Replace string"
        let newText1 = text.replace(string: "string", replacement: "boolean")
        let newText2 = text.replace(string: "string", replacement: "integer")
        
        XCTAssert(newText1 == "Replace boolean")
        XCTAssert(newText2 == "Replace integer")
    }
}
