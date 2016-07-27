//
//  ZCBaseTableViewController.swift
//  TemplateProject
//
//  Created by cjp on 16/5/9.
//  Copyright © 2016年 张豪. All rights reserved.
//

import UIKit

class ZCBaseTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       self.view.backgroundColor = kGlobalViewBgColor
       self.tableView.separatorStyle = .None
    }
   
}
