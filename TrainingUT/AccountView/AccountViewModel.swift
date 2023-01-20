//
//  AccountViewModel.swift
//  TrainingUT
//
//  Created by Pedro henrique Dias hemmel de oliveira souza on 19/01/23.
//

import Foundation
import UIKit

protocol AccountViewModelProtocol {
    func loginButtonTap()
    func shouldRequestLocation(
        showAlert: () -> (),
        askUserPermission: () -> (),
        completion: () -> ())
    var instructionText: String { get }
}

class AccountViewModel {
    private let shouldUseLocation: Bool
    private let model: AccountModel
    
    init(shouldUseLocation: Bool, model: AccountModel) {
        self.shouldUseLocation = shouldUseLocation
        self.model = model
    }
}

extension AccountViewModel: AccountViewModelProtocol {
    var instructionText: String {
        if shouldUseLocation {
            return model.instruction + " with location"
        }
        return model.instruction
    }
    
    func loginButtonTap() {
        print("Login realizado com sucesso!")
    }
    
    func shouldRequestLocation(showAlert: () -> (), askUserPermission: () -> (), completion: () -> ()) {
        if shouldUseLocation {
            askUserPermission()
            completion()
            return
        }
        showAlert()
        completion()
    }
}
