//
//  StringUtilsSpec.swift
//  CursoTests
//
//  Created by Renato Savoia Girão on 10/11/21.
//

import XCTest
@testable import Curso

class StringUtilsSpec: XCTestCase {
    
    func testIsValidEmail() {
        let email = "curso@gmail.com"
        let value = email.isValidEmail()
        
        XCTAssertTrue(value, "não é um email válido")
    }

}
