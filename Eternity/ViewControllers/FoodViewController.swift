//
//  FoodViewController.swift
//  Eternity
//
//  Created by A. Rodgers on 3/16/19.
//  Copyright © 2019 Yasin Ehsan. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var foodLst:[String] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
        print(foodLst)
    }
    
    @IBAction func add(_ sender: Any) {
        self.performSegue(withIdentifier: "camera", sender: self)
    }
    
    //self.performSegue(withIdentifier: "camera", sender: self)
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodLst.count // number of personal posts
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        cell.textLabel!.text = foodLst[indexPath.row]
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Pass the selected object to the new view controller.
        let scannerViewController = segue.destination as! ScannerViewController
        scannerViewController.lst = self.foodLst
        
    }

}