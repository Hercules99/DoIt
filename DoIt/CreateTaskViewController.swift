//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Fredrik on 09.06.2017.
//  Copyright © 2017 Hercules. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    
    @IBOutlet weak var ImportantSwitch: UISwitch!
    
    @IBOutlet weak var CreateTaskTextField: UITextField!
    
    var previousVC = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        //Create a Task from the outlet information
        
        let task = Task()
        task.name = CreateTaskTextField.text!
        task.important = ImportantSwitch.isOn
        
        // Add new task to array in previous viewController
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }
    
    
}
