//
//  InitialViewController.swift
//  HW2.7-PersonsList
//
//  Created by Айдар Рахматуллин on 05.11.2020.
//

import UIKit

class InitialViewController: UITabBarController {
    
    let personsList = Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let arrayOfControllers = tabBarController?.viewControllers else { return }
        
        // Падает при загрузке PersonListViewController. Массив personList = nil
        for controller in arrayOfControllers {
            if let controller = controller as? UINavigationController {
                if let controller = controller.topViewController as? PersonsListViewController {
//                    controller.personsList = personsList

                }
            }
        }
    }
}
