//
//  LogInScreenController.swift
//  LogPassApp
//
//  Created by Егор Астахов on 27.10.2021.
//

import UIKit

class LogInScreenController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    

    // MARK: - Properties
    private let user = User.getUserData()
    // MARK: - Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Алерт, который будет вылезать если вы неправильно ввели данные
    func showAlertWarning(message: UsersWarnings) {
        let alert = UIAlertController(title: "Ошибка", message: message.warnings, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Повторить", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    // MARK: - Передача данных с помощью сигвея
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "toWelcomeScreen":
            prepareWelcomeScreen(segue)
        default:
            break
        }
    }
    
    func prepareWelcomeScreen(_ segue: UIStoryboardSegue) {
        guard let destnationController = segue.destination as? MenuTabBar else{
            return
        }
        destnationController.userName = userNameTextField.text ?? ""
    }
    
    // MARK: - Actions
    @IBAction func unwindToFirstScreen(_ segue: UIStoryboardSegue) {
        
    }
    // Кнопка проверки авторизации
    @IBAction func logInButton(_ sender: UIButton) {
        if userNameTextField.text == user.login  && passwordTextField.text == user.password {
            sender.isEnabled = true
        } else {
            showAlertWarning(message: .userNameWarning)
        }

        
    }


}
