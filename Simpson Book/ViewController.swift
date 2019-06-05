//
//  ViewController.swift
//  Simpson Book
//
//  Created by önder güler on 31.05.2019.
//  Copyright © 2019 önder güler. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var mySimpson = [Simpson]()
    var chosenSimpson = Simpson()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //Siimpson class
        let bard = Simpson()
        bard.name = "Bart Simpson"
        bard.occupation = "Student"
        bard.image = UIImage(named: "Bart_Simpson.jpg" )!
        
        
        mySimpson.append(bard)
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpson[indexPath.row].name
        
        return cell
        

    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpson[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"
        {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedSimpson = self.chosenSimpson
        }
    }


}

