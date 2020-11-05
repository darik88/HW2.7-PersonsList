//
//  PersonContactsViewController.swift
//  HW2.7-PersonsList
//
//  Created by Айдар Рахматуллин on 04.11.2020.
//

import UIKit

class PersonContactsViewController: UIViewController {

    @IBOutlet var phoneValueLabel: UILabel!
    @IBOutlet var emailValueLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(person.firstName) \(person.lastName)"
        phoneValueLabel.text = "Phone: \(person.phone)"
        emailValueLabel.text = "Email: \(person.email)"
    }
}
