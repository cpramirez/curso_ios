//
//  ViewController.swift
//  App_Test_TableView
//
//  Created by cice on 31/3/16.
//  Copyright © 2016 cice. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //VARIABLE LOCAL GLOBAL
    let myArray = ["Enero","Andres","Felipe","O Campo","Pepe","Febrero"]
    
    //MARK: - IBOUTLET
    @IBOutlet weak var tableViewOne: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //registro de la celda
        tableViewOne.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
        //declaramos manualmente esto como el delegado que puede rellenar los datos
        tableViewOne.delegate = self
        tableViewOne.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController : UITableViewDataSource {
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : UITableViewCell = tableViewOne.dequeueReusableCellWithIdentifier("Cell")!
        cell.textLabel?.text = myArray[indexPath.row]
        
        return cell
    }
}

extension ViewController : UITableViewDelegate {
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print ("He pulsado la celda \(myArray[indexPath.row])")
    }
    
}