//
//  ViewController.swift
//  Todoey
//
//  Created by muhammad ridho on 12/23/18.
//  Copyright © 2018 muhammad ridho. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

//    var itemArray = ["Find Mike", "Buy Kunkun food", "Remove old Code"]
    var itemArray = [Item]()
    
//    let defaults = UserDefaults.standard
     let dataFilePath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first?.appendingPathComponent("Items.plist")
    
    @IBOutlet weak var itemAdd: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        print(dataFilePath)
        
//        let newItem = Item()
//        newItem.title = "Find Mike"
//        newItem.done = true
//        itemArray.append(newItem)
//        
//        let newItem2 = Item()
//        newItem2.title = "Buy Kunkun food"
//        itemArray.append(newItem2)
//        
//        let newItem3 = Item()
//        newItem3.title = "Remove old Code "
//        itemArray.append(newItem3)
//        
        loadItems()
        
        
//        if let items = defaults.array(forKey: "TodoListArray") as? [Item] {
//            itemArray = items
//         }
    }

//    MARK TableViewDataSource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
//        let cell = UITableViewCell(style: .default, reuseIdentifier: "TodoItemCell")
        
        let item = itemArray[indexPath.row]

        cell.textLabel?.text = item.title
        
//        cell.textLabel?.text = itemArray[indexPath.row].title
        
//        ternary operator =>
        //        value = condition ? valuetrue : valueFalse
        
        cell.accessoryType = item.done  ? .checkmark : .none
        
//        if item.done == true {
////        if itemArray[indexPath.row].done == true {
//            cell.accessoryType = .checkmark
//        }else{
//            cell.accessoryType = .none
//        }
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(itemArray[indexPath.row])
        
        
        itemArray[indexPath.row].done = !itemArray[indexPath.row].done
        
//        if itemArray[indexPath.row].done == false {
//            itemArray[indexPath.row].done = true
//        }else{
//            itemArray[indexPath.row].done = false
//        }
        
            saveItems()
        
//        tableView.reloadData()
        
//        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
//            tableView.cellForRow(at: indexPath)?.accessoryType = .none
//        }else {
//            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
//        }
//
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Add New Todoey Item", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add Item", style: .default) { ( action ) in
            print("success!!")
            
            let newItem = Item()
            newItem.title = textField.text!
            
            self.itemArray.append(newItem)
            
//            self.defaults.set(self.itemArray, forKey: "TodoListArray")
           self.saveItems()
            
        }
       
        alert.addTextField {
            (alertTextField) in
                alertTextField.placeholder = "Create New Item"
                textField = alertTextField
            }
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    
    func saveItems(){
        
        let encoder = PropertyListEncoder()
        
        do {
            let data = try encoder.encode(itemArray)
            try data.write(to: dataFilePath!)
        }catch{
            print("errro encoding \(error)")
        }
        
        self.tableView.reloadData()
    }
    
    func loadItems(){
        if let data = try? Data(contentsOf: dataFilePath!) {
            let decoder = PropertyListDecoder()
            do {
                itemArray = try decoder.decode([Item].self , from: data )
            }catch{
                print("error \(error)")
            }
            
        }
    }
    
}

