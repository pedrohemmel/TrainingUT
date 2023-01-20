//
//  AccountViewModelSpecs.swift
//  TrainingUTTests
//
//  Created by Pedro henrique Dias hemmel de oliveira souza on 19/01/23.
//

import UIKit
import Quick
import Nimble
@testable import TrainingUT

class AccountViewModelSpecs: QuickSpec {
    
    
    override func spec() {
        describe("AccountViewModel") {
            var sut: AccountViewModel!
            context("Should Request User") {
                var showAlert: Bool!
                var askUserPermission: Bool!
                var completion: Bool!
                
                beforeEach {
                    showAlert = false
                    askUserPermission = false
                    completion = false
                }
                
                it("Use Location True") {
                    sut = AccountViewModel(shouldUseLocation: true, model: AccountModel(instruction: ""))
                    sut.shouldRequestLocation(showAlert: {
                        showAlert = true
                    }, askUserPermission: {
                        askUserPermission = true
                    }, completion: {
                        completion = true
                    })
                    
                    expect(showAlert).to(beFalse())
                    expect(askUserPermission).to(beTrue())
                    expect(completion).to(beTrue())
                }
                
                it("Use Location True") {
                    sut = AccountViewModel(shouldUseLocation: false, model: AccountModel(instruction: ""))
                    sut.shouldRequestLocation(showAlert: {
                        showAlert = true
                    }, askUserPermission: {
                        askUserPermission = true
                    }, completion: {
                        completion = true
                    })
                    
                    expect(showAlert).to(beTrue())
                    expect(askUserPermission).to(beFalse())
                    expect(completion).to(beTrue())
                }
                
            }
            
            context("AccountViewModelProtocol") {
                it("Verify AccountViewModelProtocol") {
                    sut = AccountViewModel(shouldUseLocation: false, model: AccountModel(instruction: ""))
                    expect(sut).to(beAKindOf(AccountViewModelProtocol.self))
                }
            }
            
            context("Instruction text") {
                it("Verify using location") {
                    sut = AccountViewModel(shouldUseLocation: true, model: AccountModel(instruction: "Hello World"))
                    expect(sut.instructionText).to(equal("Hello World with location"))
                    
                    sut = AccountViewModel(shouldUseLocation: false, model: AccountModel(instruction: "Hello World"))
                    expect(sut.instructionText).to(equal("Hello World"))
                }
            }
        }
    }
}
