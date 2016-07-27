//
//  NSString+Category.swift
//  TemplateProject
//
//  Created by cjp on 16/5/11.
//  Copyright © 2016年 张豪. All rights reserved.
//

import Foundation
extension String {
    
    func showHudTipStr(dismissAfter: Double = 1.0){
        if self.trim() != ""{
            let hud = MBProgressHUD.showHUDAddedTo(kKeyWindow, animated: true)
            hud.mode = MBProgressHUDMode.Text
            hud.detailsLabelFont = UIFont.boldSystemFontOfSize(15.0)
            hud.labelText = self
            hud.margin = 10
            hud.removeFromSuperViewOnHide = true
            hud.hide(true, afterDelay: dismissAfter)
        }
    }
    func println() {
        print(self)
    }

    
    func isNilOrNullOrEmptyOrEmptySpace() -> Bool {
        
        if self.trim() == "" {
            return true
        }
        return false
    }
    
    
    func trim() -> String
    {
        return self.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
    }
    
    
}
