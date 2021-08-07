//
//  ViewController.swift
//  toDoList
//
//  Created by Halfhand Lorrine on 8/7/21.
//  Copyright © 2021 Halfhand Lorrine. All rights reserved.
//

import UIKit

var data: [String] = ["Помыть кота", "Покормить верблюда", "Найти работу"]

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellIdentifer", for: indexPath)
        cell .textLabel?.text = data[indexPath.row]
        return cell
    }
    
    override  func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
 
