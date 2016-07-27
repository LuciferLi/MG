//
//  MainSlideMenuViewController.swift
//  TemplateProject
/*
    侧边栏基类ViewController
 
 */
//  Created by Lishuo on 16/5/16.
//  Copyright © 2016年 Lucifer. All rights reserved.
//

import UIKit

class MainSlideMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.whiteColor()
        self.title = ""
        var testString:String = "测试string"
        var tab:UIButton = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        tab.setTitle(testString, forState: UIControlState.Normal)
        tab.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        tab.setButton(["back":"#ccccccc"])
        self.view.addSubview(tab)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
