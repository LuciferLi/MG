//
//  HomeController.swift
//  zckj
//
//  Created by ChenLiang on 15/9/6.
//  Copyright (c) 2015年 chuanglink. All rights reserved.
//

import UIKit
import Foundation


class HomeController: UITabBarController {
    
    
    var redImage:UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.LightContent, animated: false)
        
        let HomePage = HomeViewController()
        HomePage.title = "首页"
        HomePage.tabBarItem.image = UIImage(named: "tab_home_off")
        HomePage.tabBarItem.selectedImage = UIImage(named: "tab_home_on")
        
        let ProjectPage = HomeViewController()
        ProjectPage.tabBarItem.image = UIImage(named: "tab_project_off")
        ProjectPage.tabBarItem.selectedImage = UIImage(named: "tab_project_on")
        ProjectPage.title = "项目"
        let ServicePage = HomeViewController() //ServicePageController()
        ServicePage.title = "服务"
        ServicePage.tabBarItem.image = UIImage(named: "tab_service_off")
        ServicePage.tabBarItem.selectedImage = UIImage(named: "tab_service_on")
        let me = HomeViewController()
        me.tabBarItem.image = UIImage(named: "tab_my_off")
        me.tabBarItem.selectedImage = UIImage(named: "tab_my_on")
        me.title = "我"
        let HomeNav = UINavigationController(rootViewController: HomePage)
        
        let ProjectNav = UINavigationController(rootViewController: ProjectPage)
        let ServiceNav = UINavigationController(rootViewController: ServicePage)
        
        let meNav = UINavigationController(rootViewController: me)
        
        self.viewControllers = [HomeNav,ProjectNav,ServiceNav,meNav]
        
        self.tabBar.barTintColor = UIColor.whiteColor()
        self.tabBar.tintColor = UIColor(rgba: "#00aaee")
        
        redImage = UIImageView(frame: CGRectMake(MainWidth - MainWidth/4*0.4, 7, 6, 6))
        redImage.image = UIImage(named: "redPoint")
 
    }
}



