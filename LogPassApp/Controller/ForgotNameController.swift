//
//  ForgotNameController.swift
//  LogPassApp
//
//  Created by Егор Астахов on 27.10.2021.
//

import UIKit

class ForgotNameController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var forgotEmailTextField: UITextField!
    
    // MARK: - Properties
    private var user = User.getUserData()
    // MARK: - Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    // Делаем алерт для подтверждения
    func showAlertConfirms(message: UsersConfirms) {
        let alert = UIAlertController(title: "Успешно", message: message.confirms, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Принять", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    // Делаем алерт для ошибки
    func showAlertWarning(message: UsersWarnings) {
        let alert = UIAlertController(title: "Ошибка", message: message.warnings, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Попробовать снова", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    // MARK: - Actions
    @IBAction func forgotEmailButton(_ sender: UIButton) {
        if user.email == forgotEmailTextField.text {
            showAlertConfirms(message: .userEmailConfirm)
        } else {
            showAlertWarning(message: .userEmailWarning)
        }
    }
    

}
