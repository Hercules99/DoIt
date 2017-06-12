//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Fredrik on 11.06.2017.
//  Copyright © 2017 Hercules. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    @IBOutlet weak var taskLabel: UILabel!
    
    
    var task : Task? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task!.important {
            taskLabel.text = "❗️\(task!.name!)"
            
        } else {
            taskLabel.text = task!.name!
            
        }
        
    }
    
    
    @IBAction func completeTapped(_ sender: Any) {
        navigationController!.popViewController(animated: true)
        
         let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            context.delete(task!)
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
    }
    
    
}
