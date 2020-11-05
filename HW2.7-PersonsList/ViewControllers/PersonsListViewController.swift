//
//  PersonsListViewController.swift
//  HW2.7-PersonsList
//
//  Created by Айдар Рахматуллин on 04.11.2020.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    var personsList: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personsList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        let currentPerson = personsList[indexPath.row]
        cell.textLabel?.text = "\(currentPerson.firstName) \(currentPerson.lastName)"
        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personContactsVC = segue.destination as? PersonContactsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        personContactsVC.person = personsList[indexPath.row]
    }

}
