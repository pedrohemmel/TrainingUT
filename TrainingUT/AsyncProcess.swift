//
//  AsyncProcess.swift
//  TrainingUT
//
//  Created by Pedro henrique Dias hemmel de oliveira souza on 19/01/23.
//

import UIKit

class AsyncProcess {
    var name = ""
    
    func doStuff(_ completion: @escaping (String) -> ()) {
        DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + 0.1) { [weak self] in
            completion("Pedro")
        }
    }
    
    func callThatResultsInSideEffect() {
        DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + 0.1) { [weak self] in
            self?.name = "Pedro"
        }
    }
}
