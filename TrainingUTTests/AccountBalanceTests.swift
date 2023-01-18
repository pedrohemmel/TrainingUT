//
//  AccountBalanceTests.swift
//  TrainingUTTests
//
//  Created by Pedro henrique Dias hemmel de oliveira souza on 18/01/23.
//

import XCTest
@testable import TrainingUT

final class AccountBalanceTests: XCTestCase {

    var account: AccountBalance?

    func testGetSpecialLimit100() {
        self.account = AccountBalance(balance: 99)
        let newBalance = self.account?.getSpecialLimit()
        XCTAssertEqual(newBalance, 109, "The balance is less than 100, so this will return the actual value of account?.balance plus 10")
    }
    
    func testGetSpecialLimit300() {
        self.account = AccountBalance(balance: 300)
        let newBalance = self.account?.getSpecialLimit()
        XCTAssertEqual(newBalance, 300, "The balance is more than 99 and less than 501, so this is return the actual value of account?.balance")
    }
    
    func testGetSpecialLimit500() {
        self.account = AccountBalance(balance: 501)
        let newBalance = self.account?.getSpecialLimit()
        XCTAssertEqual(newBalance, 1501, "The balance is more than 500, so this is return the actual value of account?.balance plus 1000")
    }
}
