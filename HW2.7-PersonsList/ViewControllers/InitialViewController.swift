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
        
        guard let viewcontrollers = viewControllers else { return }
        
        for viewcontroller in viewcontrollers {
            if let vc = viewcontroller as? UINavigationController {
                if let personListVC = vc.topViewController as? PersonsListViewController {
                    personListVC.personsList = personsList
                } else if let sectionedVC = vc.topViewController as? SectionedPersonListViewController {
                    sectionedVC.personsList = personsList
                }
            }
        }
        
    }
}
