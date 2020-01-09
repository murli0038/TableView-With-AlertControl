//
//  ViewController.swift
//  TableViewWithAlertController
//
//  Created by Nikunj Prajapati on 29/12/19.
//  Copyright © 2019 Nikunj Prajapati. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    
    var nameArr:[String] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func addName(_ sender: UIBarButtonItem)
    {
        
        //Step 1 : create reference variable for alert controller with alert type
        let alert = UIAlertController(title: "Add Name", message: "Please Enter Your Name...!!" , preferredStyle: .alert)
        
        //Step : 2 add name action for alert controller
        let add = UIAlertAction(title: "Add", style: .default)
        {   (action) in
            
            //here take all text field in alert which are created
            let txtfild = alert.textFields! [0] as UITextField
            
            //take a variable  for insert into nameArr which is in tableView Format
            let Name = txtfild.text
            
            self.nameArr.append(Name!)
            self.tableView.reloadData()
        }
        alert.addAction(add)
        
        //cancel action for alert controller
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        alert.addAction(cancel)
        
        //Step 3 : Represnt the alert view
        self.present(alert, animated: true, completion: nil)
        
        //Step 4 : Create text Field in Alert View
        alert.addTextField { (textfield : UITextField) in
            textfield.placeholder = "Enter your name to add in table view"}
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return nameArr.count
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! myTableViewCell
    
        cell.nameLabel.text = nameArr[indexPath.row] as String
    
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    {
        guard editingStyle == .delete
        else
        {
            return
        }
        nameArr.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .automatic)
    }
  

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

