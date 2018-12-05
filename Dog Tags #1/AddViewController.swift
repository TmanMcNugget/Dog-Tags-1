//
//  AddViewController.swift
//  Dog Tags #1
//  Created by period2 on 11/1/18.
//  Copyright © 2018 period2. All rights reserved.
import UIKit
class AddViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var pet = [[String: String]]()
    {
        didSet
        {
            defaults.set(pet, forKey: item)
        }
    }
    @IBOutlet weak var tableView: UITableView!
    var defaults = UserDefaults.standard
    var item = String()
    {
        didSet{
            print(item)
        }
    }
    var createdOne = 0
    var createdTwo = 1
    var createdThree = 2
    var createdFour = 3
    var createdItems = [0, 1, 2, 3]
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return item.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let indexPath = pet[indexPath.row]
        cell.textLabel?.text = indexPath["Name"]
        cell.detailTextLabel?.text = indexPath["Pet"]
        print(item)
        cell.textLabel?.text = item
        self.tableView.reloadData()
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
            textField.placeholder = "Name"
        })
        alert.addTextField(configurationHandler: { (textField) in
                textField.placeholder = "Pet"

        })
        let okAction = UIAlertAction(title: "Ok Add", style: .default) { (action) in
            let choiceTextField = alert.textFields![0] as UITextField
            let petTextField = alert.textFields![1] as UITextField
            let allItem = choiceTextField.text! + petTextField.text!
            self.item = allItem
            print(allItem)
            self.item.append(allItem)
            self.tableView.reloadData()
        }
        let cancelAction = UIAlertAction(title: "No Cancel", style: .cancel, handler: nil)
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        self.present(alert, animated: false, completion: nil)
//        self.tableView.reloadData()
    }
    func tableView( _ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
        {
            if editingStyle == .delete
            {
                self.pet.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
                tableView.reloadData()
            }
        }
//    override func viewWillAppear(_ animated: Bool) {
//        if let saveData = defaults.object(forKey: item) as? []
//        {
//            pet = saveData
//        }
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        for i in 0...3
        {
            let name = Default_Input_Info.defaultedInfo.init().name
            let breedOrTypeOfAnimal = Default_Input_Info.defaultedInfo.init().breedOrTypeOfAnimal
            let age = Default_Input_Info.defaultedInfo.init().name
            let type = Default_Input_Info.defaultedInfo.init().breedOrTypeOfAnimal
            let extra = Default_Input_Info.defaultedInfo.init().extra
            let animal = Default_Input_Info.defaultedInfo.init().animal
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ViewController
    }
}

