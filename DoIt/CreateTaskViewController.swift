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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        //Create a Task from the outlet information
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        
        task.name = CreateTaskTextField.text!
        task.important = ImportantSwitch.isOn
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        // Pop back
       
        navigationController!.popViewController(animated: true)
        
    }
    
    
}
