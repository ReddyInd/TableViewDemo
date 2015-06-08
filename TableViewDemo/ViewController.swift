//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Goalsr on 05/06/15.
//  Copyright (c) 2015 Goalsr. All rights reserved.

import UIKit



class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    @IBOutlet weak var tableview: UITableView!
    
    var arrayItems = ["First","Second","Third","Fourth","Fifth"]
    
     override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        tableview.registerClass(UITableViewCell.self, forCellReuseIdentifier:"cell")
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
       func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return arrayItems.count;
        
    }
  
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
    var cell:UITableViewCell = self.tableview.dequeueReusableCellWithIdentifier("cell") as! UITableViewCell
        
        cell.textLabel?.text = arrayItems[indexPath.row]
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        
        if indexPath.row == 0{
            
            
        }
        
        
        
        
    }
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 50.0;
    }
    
    
}

