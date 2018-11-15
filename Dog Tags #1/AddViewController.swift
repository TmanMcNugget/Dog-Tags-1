//
//  AddViewController.swift
//  Dog Tags #1
//
//  Created by period2 on 11/1/18.
//  Copyright © 2018 period2. All rights reserved.
//

import UIKit
import AVFoundation
class AddViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var pet = [[String: String]]()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let indexPath = pet[indexPath.row]
        cell.textLabel?.text = indexPath["id"]
        cell.detailTextLabel?.text = indexPath["description"]
        return cell
    }
    @IBAction func addItem(_ sender: UIBarButtonItem)
    {
        alert()
    }
    func alert()
    {
        let alert = UIAlertController(title: "Add Item", message: "Do you want to add something?", preferredStyle: .alert)
        alert.addTextField(configurationHandler: { (textField) in
            textField.placeholder = "New Item"
        })
        let okAction = UIAlertAction(title: "Ok Add", style: .default) { (action) in
            let choiceTextField = alert.textFields![0] as UITextField
            let allItem = choiceTextField.text!
            self.pet.append(allItem)
            self.tableView.reloadData()
        }
        let cancelAction = UIAlertAction(title: "No Cancel", style: .cancel, handler: nil)
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        present(alert, animated: false, completion: nil)
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let name = Default_Input_Info.defaultedInfo.init().name
        let breedOrTypeOfAnimal = Default_Input_Info.defaultedInfo.init().breedOrTypeOfAnimal
        let age = Default_Input_Info.defaultedInfo.init().name
        let type = Default_Input_Info.defaultedInfo.init().breedOrTypeOfAnimal
        let extra = Default_Input_Info.defaultedInfo.init().extra
        let animal = Default_Input_Info.defaultedInfo.init().animal        
    }
}
                                                    
