//
//  SectionedPersonListViewController.swift
//  HW2.7-PersonsList
//
//  Created by Айдар Рахматуллин on 04.11.2020.
//

import UIKit

class SectionedPersonListViewController: UITableViewController {
    
    var personsList: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return personsList.count
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let curretnPerson = personsList[section]
        return "\(curretnPerson.firstName) \(curretnPerson.lastName)"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let currentPerson = personsList[indexPath.section]
        if indexPath.row == 0 {
            cell.textLabel?.text = "☏ \(currentPerson.phone)"
        } else {
            cell.textLabel?.text = "✉︎ \(currentPerson.email)"
        }
        return cell
    }

}
