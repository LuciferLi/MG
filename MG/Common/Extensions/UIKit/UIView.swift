//
//  UIView.swift
//  zckj
//
//  Created by ChenLiang on 15/9/29.
//  Copyright (c) 2015年 chuanglink. All rights reserved.
//

import CoreFoundation
import Foundation
import UIKit

extension UIView {
    
    // zckj.ServiceDetailHeaderView

    class func viewFromXib() -> UIView?{
        let name = NSStringFromClass(self).stringByReplacingOccurrencesOfString("zckj.", withString: "")
        print("class : \(name)")
        return NSBundle.mainBundle().loadNibNamed(NSStringFromClass(self).stringByReplacingOccurrencesOfString("zckj.", withString: ""), owner: nil, options: nil).last as? UIView
    }
 
}
