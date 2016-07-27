//
//  ZCBaseNavController.swift
//  TemplateProject
//
//  Created by cjp on 16/5/11.
//  Copyright © 2016年 张豪. All rights reserved.
//

import UIKit

class ZCBaseNavController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    override func pushViewController(viewController: UIViewController, animated: Bool) {
        
        if self.childViewControllers.count >= 1{
            // 左上角返回按钮
            
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "servise_back_select", target: self, action: "popViewControllerAnimated:")
            viewController.hidesBottomBarWhenPushed = true
            
        }
        
        super.pushViewController(viewController, animated: animated)
        
    }

}
