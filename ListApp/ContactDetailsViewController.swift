//
//  ContactDetailsViewController.swift
//  ListApp
//
//  Created by Aleksey Zyamin on 30.08.2022.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var singlPerson: Person!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameLabel.text = singlPerson.fullName
        phoneLabel.text = singlPerson.phone
        emailLabel.text = singlPerson.email

    }

}
