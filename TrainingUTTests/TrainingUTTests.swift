//
//  TrainingUTTests.swift
//  TrainingUTTests
//
//  Created by Pedro henrique Dias hemmel de oliveira souza on 18/01/23.
//

import XCTest
@testable import TrainingUT

final class TrainingUTTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        //This function is used to prepare the environment to start building the tests
        print("Started")
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        //This function clean the tests variables created in setUpWithError
        print("Finshed")
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        print("Testing rightExample")
        XCTAssert(1+1 == 2)
    }

    func testExamplo() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        print("Testing wrongExample")
        XCTAssert(1+1 == 3)
    }

}
