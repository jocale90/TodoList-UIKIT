//
//  ViewController.swift
//  TodoList-UIKIT
//
//  Created by Jose Pernia on 2025-01-28.
//

import UIKit




class ViewController: UIViewController {
    
    let todos = [
        Todo(title: "Make vanilla pudding."),
        Todo(title: "Share pudding with friends."),
        Todo(title: "Eat it while watching TV"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: UITableViewDataSource {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
       return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let todo = todos[indexPath.row]
        let cell = UITableViewCell()
        cell.textLabel?.text = todo.title
        return cell
    }
}

