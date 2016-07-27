//
//  UIBarButtonItem+Category.swift
//  TemplateProject
//
//  Created by cjp on 16/5/11.
//  Copyright © 2016年 张豪. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    
    class func creatBarButtonItem(imageName:String, target: AnyObject?, action: Selector) ->UIBarButtonItem {
        let btn = UIButton()
        btn.setImage(UIImage(named: imageName), forState: UIControlState.Normal)
//        btn.setImage(UIImage(named: imageName + "_highlighted"), forState: UIControlState.Highlighted)
        btn.addTarget(target, action: action, forControlEvents: UIControlEvents.TouchUpInside)
        btn.sizeToFit()
        return UIBarButtonItem(customView: btn)
    }
    
    convenience init(imageName:String, target: AnyObject?, action: String?)
    {
        let btn = UIButton()
        btn.setImage(UIImage(named: imageName), forState: UIControlState.Normal)
//        btn.setImage(UIImage(named: imageName + "_highlighted"), forState: UIControlState.Highlighted)
        if action != nil
        {
            btn.addTarget(target, action: Selector(action!), forControlEvents: UIControlEvents.TouchUpInside)
        }
        btn.sizeToFit()
        self.init(customView: btn)
    }
}
