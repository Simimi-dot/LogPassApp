//
//  ForgotPasswordController.swift
//  LogPassApp
//
//  Created by Егор Астахов on 27.10.2021.
//

import UIKit

class ForgotPasswordController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var forgotPasswordUserNameTextField: UITextField!
    @IBOutlet weak var forgotPasswordEmailTextField: UITextField!
    
    // MARK: - Properties
    private var user = User.getUserData()
    // MARK: - Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Алер для подтверждения
    func showAlertConfirm(message: UsersConfirms) {
        let alert = UIAlertController(title: "Успешно", message: message.confirms, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Принять", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    // Алерт для ошибки
    func showAlertWarning(message: UsersWarnings) {
        let alert = UIAlertController(title: "Ошибка", message: message.warnings, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Попробовать снова", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    // MARK: - Actions
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        if forgotPasswordUserNameTextField.text == user.login && forgotPasswordEmailTextField.text == user.email{
            showAlertConfirm(message: .userNameConfirm)
        } else {
            showAlertWarning(message: .userNameWarning)
        }
    }
    

}
