//
//  BeforeEachAfterEach.swift
//  TrainingUTTests
//
//  Created by Pedro henrique Dias hemmel de oliveira souza on 19/01/23.
//

import Foundation
import Quick
import Nimble
@testable import TrainingUT

class BeforeEachAfterEach: QuickSpec {
    
    override func spec() {
        describe("BeforeEach and AfterEach behavior") {
            beforeEach {
                print("Describe before each")
            }
            
            context("First context") {
                beforeEach {
                    print("Entered in the first context")
                }
                it("Examplo 1") {
                    print("Examplo 1 - First context")
                }
                it("Examplo 2") {
                    print("Examplo 2 - First context")
                }
                
                afterEach {
                    print("Got out of the first context")
                }
            }
            
            context("Second context") {
                beforeEach {
                    print("Entered in the second context")
                }
                
                it("Examplo 1") {
                    print("Examplo 1 - Second context")
                }
                it("Examplo 2") {
                    print("Examplo 2 - Second context")
                }
                
                afterEach {
                    print("Got out of the second context")
                }
            }
            
            afterEach {
                print("Describe after each")
            }
        }
    }
}
