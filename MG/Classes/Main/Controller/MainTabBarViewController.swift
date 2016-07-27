//
//  MainTabBarViewController.swift
//  TemplateProject
//
//  Created by cjp on 16/5/9.
//  Copyright © 2016年 张豪. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController,NSXMLParserDelegate {
    var TabTitleArray:[String] = []
    var TabImageArray:[String] = []
    var ControllerNameArray:[String] = []
    var GetDataState:Bool = true{
        didSet{
            TabInfoModles.removeAll()
            for(var i = 0;i < ControllerNameArray.count;i++){
                let modle = TabInfoModle()
                
                modle.TabTitle = TabTitleArray[i]
                modle.TabImage = TabImageArray[i]
                modle.ControllerName = ControllerNameArray[i]
                TabInfoModles.append(modle)
                
            }
            
            addChildViewControllers(TabInfoModles)
            
        }
        
        
    }

    
    var TabInfoModles:[TabInfoModle] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.barTintColor = UIColor.whiteColor()
        let parser = NSXMLParser(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("config", ofType: "xml")!))
        
        //读取XML文件
        parser!.delegate = self
        parser!.parse()
        GetDataState = parser!.parse().boolValue
    }
    var currentNodeName:String!
    func parser(parser: NSXMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String]) {
        currentNodeName = elementName
    }
    
    func parser(parser: NSXMLParser, foundCharacters string: String) {
        let str = string.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        if str != "" {
            if(currentNodeName == "TabTitle"){
                TabTitleArray.append(str)
                
            }else if(currentNodeName == "TabImage"){
               
                TabImageArray.append(str)
                
            }else if(currentNodeName == "ControllerName"){
               
                ControllerNameArray.append(str)
                
            }
        }
        
        
    }

    
    /**
    添加所有子控制器
    */
    private func addChildViewControllers(tabInfoModles:[TabInfoModle]) {
        var Nav:[UIViewController] = []
        let tabdata = tabInfoModles
        if(tabdata.count != 0){
            for(var i = 0;i < tabdata.count;i++){
                //字符串转化为类名
                let controllerName = tabdata[i].ControllerName
                var className = "MG."+controllerName
                let aClass = NSClassFromString(className) as! UIViewController.Type
                let viewController = aClass.init()
                let na =  addChildViewController(viewController, title: tabdata[i].TabTitle, imageName: tabdata[i].TabImage)
                Nav.append(na)
            }
            self.viewControllers = Nav
            
        }
    }
    
    
    
    
    /**
    初始化子控制器
    
    :param: childController 需要初始化的子控制器
    :param: title           子控制器的标题
    :param: imageName       子控制器的图片
    */
    private func addChildViewController(childVC: UIViewController, title:String, imageName:String) -> UIViewController {
        
        childVC.title = title
        childVC.tabBarItem.image = UIImage(named: imageName)
        childVC.tabBarItem.selectedImage = UIImage(named: imageName + "_highlighted")
        let Nav = UINavigationController(rootViewController: childVC)
        
        return Nav
//        // 1设置首页对应的数据
//        childVC.tabBarItem.image = UIImage(named: imageName)
//        childVC.tabBarItem.selectedImage = UIImage(named: imageName + "_highlighted")
//        childVC.tabBarItem.title = "1231"
////        childVC.title = "ssss"
//        // 2.给首页包装一个导航控制器
//        let nav = ZCBaseNavController(rootViewController: childVC)
//        nav.title = "3123"
////        nav.addChildViewController(childVC)
//        
//        // 3.将导航控制器添加到当前控制器上
//        addChildViewController(nav)
    }

}
