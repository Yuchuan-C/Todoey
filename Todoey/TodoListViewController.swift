//
//  ViewController.swift
//  Todoey
//
//  Created by haha on 2018/10/08.
//  Copyright © 2018 haha. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController  {
    
    let itemArray = ["Find Mike", "Bye Eggos", "Destory Demo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //Mark - Tableview Datasouce Methodsn
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier:  "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text =  itemArray[indexPath.row]
        
        return cell
        
    }
    
    //Mark - Tableview Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //print(itemArray[indexPath.row])
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }

        
        tableView.deselectRow(at: indexPath, animated: true)
        
        
    }

}

