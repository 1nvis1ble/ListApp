//
//  ContactsTableViewController.swift
//  ListApp
//
//  Created by Aleksey Zyamin on 30.08.2022.
//

import UIKit

class ContactsViewController: UITableViewController {
    
    private var contactList = Person.getContactsList()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Contact", for: indexPath)
        
        let contact = contactList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        
        content.text = contact.fullName

        
        cell.contentConfiguration = content
        
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactDetailsVC = segue.destination as? ContactDetailsViewController else
        { return }
        
        guard let index = tableView.indexPathForSelectedRow else { return }
        let contact = contactList[index.row]
        
        contactDetailsVC.singlPerson = contact
        }

}
