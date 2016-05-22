//
//  ViewController.swift
//  TableViewDemo
//
//  Created by DavidKim on 5/22/16.
//  Copyright © 2016 Taiwen Jin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var restaurants = ["HunanKing","ChinaInn","HappyWork","ChineseKitchen","AsiaCafe","Charles"]
    //表格里有多少个单元格
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let tempCell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        tempCell.textLabel?.text = restaurants[indexPath.row]
        return tempCell
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

