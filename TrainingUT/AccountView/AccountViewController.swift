//
//  AccountViewController.swift
//  TrainingUT
//
//  Created by Pedro henrique Dias hemmel de oliveira souza on 19/01/23.
//

import UIKit

class AccountViewController: UIViewController {
    
    @IBOutlet weak var instructionLabel: UILabel!
    var viewModel: AccountViewModelProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel?.shouldRequestLocation(showAlert: {
            print("Alert")
        }, askUserPermission: {
            print("Get user location")
        }, completion: {
            print("Completion")
        })
        
        instructionLabel.text = viewModel?.instructionText
    }
    
    @IBAction func loginButtonAction(_ sender: Any) {
        viewModel?.loginButtonTap()
    }
}
