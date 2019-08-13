//
//  AddToDoViewController.swift
//  To Do List
//
//  Created by Apple on 8/12/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    var previousVC = ToDoListTableViewController()
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func addTapped(_ sender: Any) {
        let toDo = ToDo()
        if let titleText = titleTextField.text {
            toDo.name = titleText
        toDo.important = importantSwitch.isOn
        }
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData()
        
    }



}
