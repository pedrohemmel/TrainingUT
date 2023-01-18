//
//  StringUtils.swift
//  TrainingUT
//
//  Created by Pedro henrique Dias hemmel de oliveira souza on 18/01/23.
//

import UIKit

extension String {
    func removeWhitespace() -> String {
        return self.replace(string: " ", replacement: "")
    }
    
    func replace(string: String, replacement: String) -> String {
        return self .replacingOccurrences(of: string, with: replacement, options: .literal, range: nil)
    }
    
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z.+%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
}
