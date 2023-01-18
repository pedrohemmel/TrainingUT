//
//  AccountBalance.swift
//  TrainingUT
//
//  Created by Pedro henrique Dias hemmel de oliveira souza on 18/01/23.
//

import Foundation

struct AccountBalance {
    let balance: Double
    
    func getSpecialLimit() -> Double {
        if balance < 100 {
            return balance + 10
        } else if balance > 500 {
            return balance + 1000
        }
        
        return balance
    }
}
