//
//  StringUtilsSpec.swift
//  TrainingUTTests
//
//  Created by Pedro henrique Dias hemmel de oliveira souza on 18/01/23.
//

import Quick
import Nimble
@testable import TrainingUT


class StringUtilsSpec: QuickSpec {
    //Function that test all of the code in it
    override func spec() {
        describe("StringUtils") {
            context("Is Valid Email") {
                it("Valid Email") {
                    //Testing email
                    let email = "pedro@gmail.com"
                    let isValidEmail = email.isValidEmail()
                    expect(isValidEmail).to(beTrue())
                }
                
                it("Invalid Email") {
                    //Testing email
                    let email = "pedro"
                    let isValidEmail = email.isValidEmail()
                    expect(isValidEmail).to(beFalse())
                }
            }
        }
    }
}
