//
//  APIManager.swift
//  zckj
//
//  Created by ChenLiang on 15/9/28.
//  Copyright (c) 2015年 chuanglink. All rights reserved.
//

import Foundation

class APIManager {

    
       class func Usse_GET_BasicModel(complete:(result:BasicDataModelResult?,statusCode:Int?)->Void){
        APIClient.protoClient().getProtoWithPath("/api/v2/basic/basicdata") { (protoResult, statusCode) -> Void in
            complete(result: protoResult, statusCode: statusCode)
            
        }

    }
}




