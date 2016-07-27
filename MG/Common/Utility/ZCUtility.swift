//
//  ZCUtility.swift
//  TemplateProject
//
//  Created by 张豪 on 16/5/9.
//  Copyright © 2016年 张豪. All rights reserved.
//

import Foundation

class ZCUtility: NSObject {
    class func setJsBundleVersion(jsVersion:Float){
        let standard = NSUserDefaults.standardUserDefaults()
        standard.setFloat(jsVersion, forKey: "JsBundleVersion")
        standard.synchronize()
    }
    
    class func getJsBundleVersion() -> Float {
        let data = NSUserDefaults.standardUserDefaults().floatForKey("JsBundleVersion")
        return data
    }
    
    class func GetFilePath(fileName:String) -> String {
        
        let paths = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
        let documentDirectory = paths[0] as NSString
        let filePath = documentDirectory.stringByAppendingPathComponent(fileName)
        return filePath
    }
    //调用打电话功能
    class func System_PhoneNmuber(phoneNmuber:String){
        
        UIApplication.sharedApplication().openURL(NSURL(string :"tel://\(phoneNmuber)")!)
        
    }
    //发短信功能
    class func LC_System_Message(phoneNmuber:String){
        
        UIApplication.sharedApplication().openURL(NSURL(string :"sms://\(phoneNmuber)")!)
        
    }
    //评分功能
    class func LC_AppStore_Score(address:String){
        
        UIApplication.sharedApplication().openURL(NSURL(string: address)!)
        
    }

    
}
