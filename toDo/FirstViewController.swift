//
//  FirstViewController.swift
//  toDo
//
//  Created by shota ito on 2018/09/17.
//  Copyright © 2018 shota ito. All rights reserved.
//

import UIKit

var list = ["Set your list!"]

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // outlet conected from label
    @IBOutlet weak var myTableView: UITableView!
    
    
    
    
    // return the number of lists??
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return list.count
    }
    
    
    // 
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        
        return cell
        
        
        
    }
    
    
    // swipe delete func
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        
        if editingStyle == UITableViewCellEditingStyle.delete{
            list.remove(at: indexPath.row)
            myTableView.reloadData()
        }
    }

    
    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

