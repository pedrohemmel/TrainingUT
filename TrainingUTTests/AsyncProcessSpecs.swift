//
//  AsyncProcessSpecs.swift
//  TrainingUTTests
//
//  Created by Pedro henrique Dias hemmel de oliveira souza on 19/01/23.
//

import Quick
import Nimble
@testable import TrainingUT

class AsyncProcessSpecs: QuickSpec {
    
    override func spec() {
        describe("AsyncProcess") {
            var asyncProcess: AsyncProcess!
            beforeEach {
                asyncProcess = AsyncProcess()
            }
            context("callThatResultsInSideEffect") {
                it("Test callThatResultsInSideEffect") {
                    asyncProcess.callThatResultsInSideEffect()
                    expect(asyncProcess.name).toEventually(equal("Pedro"))
                }
                
                it("Test doStuff") {
                    let asyncProcess = AsyncProcess()
                    
                    waitUntil { done in
                        asyncProcess.doStuff { result in
                            expect(result).to(equal("Pedro"))
                            done()
                        }
                    }
                }
            }
        }
    }
}
