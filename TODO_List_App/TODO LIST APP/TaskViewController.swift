//
//  TaskViewController.swift
//  TODO LIST APP
//
//  Created by Yitong Pei on 19/6/2022.
//

import UIKit

class TaskViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    var task: String?
    
    var update: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = task
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Delete", style: .done, target: self, action: #selector(deleteTask))
        // Do any additional setup after loading the view.
    }
    
    
    // delete features not completed
    @objc func deleteTask(){
        guard let count = UserDefaults().value(forKey: "count") as? Int else{
            return
        }
        
        let newCount = count - 1
        UserDefaults().setValue(newCount, forKey: "count")
        UserDefaults().setValue(nil, forKey: "task_\(newCount)")
        
        navigationController?.popViewController(animated: true)
    }
    
}
