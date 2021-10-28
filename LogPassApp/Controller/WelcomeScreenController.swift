//
//  WelcomeScreenController.swift
//  LogPassApp
//
//  Created by Егор Астахов on 27.10.2021.
//

import UIKit

class WelcomeScreenController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var welcomeLabel: UILabel!
    
    // MARK: - Properties
    
    var user: User!
    
    // MARK: - Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        let transmittedUserName = (tabBarController as? MenuTabBar)?.userName
        updateTransmittedUserName(withName: transmittedUserName!)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.tabBar.isHidden = false
    }
    
    private func updateTransmittedUserName(withName name: String) {
        welcomeLabel.text = "Welcome, \(name)!"
    }
    
    
    // MARK: - Actions
    
}
