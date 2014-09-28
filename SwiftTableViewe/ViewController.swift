//
//  ViewController.swift
//  SwiftTableViewe
//
//  Created by Mitul on 28/09/14.
//  Copyright (c) 2014 vishva. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate , UITableViewDataSource {
    
/*
    @IBOutlet
    var tableView: UITableView
*/
    @IBOutlet
    var mytableView:UITableView
    
    var arrItems:String[] = ["IOS" , "Developer","Cloud"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.mytableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return arrItems.count;
    }
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
        
        var cell:UITableViewCell  = self.mytableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        cell.textLabel.text = arrItems[indexPath.row];
        return cell;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

