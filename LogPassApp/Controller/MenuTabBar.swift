//
//  MenuTabBar.swift
//  LogPassApp
//
//  Created by Егор Астахов on 27.10.2021.
//

import UIKit

class MenuTabBar: UITabBarController {

    // MARK: - Properties

    var userName: String?
    // MARK: - Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Убираем кнопку, которая возвращает в главое меню
        let backButton = UIBarButtonItem(title: "", style: .plain, target: navigationController, action: nil)
        navigationItem.leftBarButtonItem = backButton
    }


}
