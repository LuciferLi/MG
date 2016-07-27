//
//  EnvironmenUtility.swift
//  LuciferMVC
//
//  Created by Lishuo on 16/1/15.
//  Copyright © 2016年 Lishuo. All rights reserved.
//

import Foundation
import UIKit


    //定义宏
    let MainBounds = UIScreen.mainScreen().bounds
    let MainWidth = UIScreen.mainScreen().bounds.width
    let MainHeight = UIScreen.mainScreen().bounds.height
    let NavBarHeight :CGFloat = 58


class LC_EnvironmenUtility{
    
    //获取当前手机版本
    class func OSVISON() -> String{
        
        let osVersion = UIDevice.currentDevice().systemVersion as NSString;
        return osVersion as String
    }
    class func ui(one:(o:String) -> Void){
        
    }
    
    //获取是否网络连接
    class func LC_IsConnectionAvailable() -> Bool{
        
        var isExistenceNetwork:Bool = true;
//        Reachability *reach = [Reachability reachabilityWithHostName:@"www.apple.com"];
        let reach:Reachability = Reachability(hostName: "www.baidu.com")
        if(reach.currentReachabilityStatus() == NotReachable){
            isExistenceNetwork = false;
        }else if(reach.currentReachabilityStatus() == ReachableViaWiFi){
            isExistenceNetwork = true;
        }else if(reach.currentReachabilityStatus() == ReachableViaWWAN){
            isExistenceNetwork = true;
        }else{
             print("不可用")
        }
        
        return isExistenceNetwork;
    }
    //网络连接状态
    //NetworkState=0  代表当前网络无连接
    //NetworkState=1  代表当前网络为wifi连接
    //NetworkState=2  代表当前网络为移动网络连接
    class func LC_Get_NetworkState() -> Int{
        
        var NetworkState:Int = 0;
        
        let reach:Reachability = Reachability(hostName: "www.baidu.com")
        if(reach.currentReachabilityStatus() == NotReachable){
            NetworkState = 0;
        }else if(reach.currentReachabilityStatus() == ReachableViaWiFi){
            NetworkState = 1;
        }else if(reach.currentReachabilityStatus() == ReachableViaWWAN){
            NetworkState = 2;
        }else{
            print("不可用")
        }
        
        return NetworkState;
    }
    
      
    
    
    


    
}