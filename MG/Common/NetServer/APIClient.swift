//
//  APIClient.swift
//  zckj
//
//  Created by ChenLiang on 15/9/13.
//  Copyright (c) 2015年 chuanglink. All rights reserved.
//
import ProtocolBuffers

public enum RequestMethod{
    case GET
    case POST
    case PUT
    case DELETE
    
    var description : String {
        switch self {
        case .GET: return "GET";
        case .POST: return "POST";
        case .PUT: return "PUT";
        case .DELETE: return "DELETE";
        }
    }
}

public enum ProtocolType {
    case Json
    case Protobuf
    case Http
}

public class APIClient : AFHTTPRequestOperationManager {
    
    private var protocolType:ProtocolType = ProtocolType.Protobuf
    
    override init(baseURL url: NSURL?) {
        super.init(baseURL: url)
        
        self.securityPolicy.allowInvalidCertificates = true;
        
    }
    
    
    
    private func changeProtocolType(type:ProtocolType){
        
        if (type == ProtocolType.Json){
            self.requestSerializer = AFJSONRequestSerializer()
            self.requestSerializer.setValue("application/json", forHTTPHeaderField: "Accpet")
            self.requestSerializer.setValue("application/json", forHTTPHeaderField: "Content-Type")
            self.responseSerializer = AFJSONResponseSerializer()
            self.responseSerializer.acceptableContentTypes = ["application/json"]
        }else if(type == ProtocolType.Protobuf){
            self.requestSerializer = AFHTTPRequestSerializer()
            self.requestSerializer.setValue("application/x-protobuf", forHTTPHeaderField: "Accept")
            self.requestSerializer.setValue("application/x-protobuf", forHTTPHeaderField: "Content-Type")
            self.responseSerializer = AFHTTPResponseSerializer()
            self.responseSerializer.acceptableContentTypes = ["application/x-protobuf"]
            
        }else if type == ProtocolType.Http {
            self.requestSerializer = AFHTTPRequestSerializer()
            self.responseSerializer = AFHTTPResponseSerializer()
        }
        
        
//        if let credential = ZCUtility.getLocalUserCredential() {
//            self.requestSerializer.setValue("\(credential.TokeyType) \(credential.AccessToken)", forHTTPHeaderField: "Authorization")
//        }
        
    }
    
    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    
    class func protoClient(baseUrl:String = BaseUrl) -> APIClient {
        let client = APIClient(baseURL: NSURL(string:baseUrl))
        client.changeProtocolType(ProtocolType.Protobuf)
        
        return client
    }
    
    class func httpClient(baseUrl:String = BaseUrl) -> APIClient {
        let client = APIClient(baseURL: NSURL(string:baseUrl))
        client.changeProtocolType(ProtocolType.Http)
        return client
    }
    
    
    
    class func jsonClient(baseUrl:String = BaseUrl) -> APIClient {
        let client = APIClient(baseURL: NSURL(string:baseUrl))
        client.changeProtocolType(ProtocolType.Json)
        return client
    }
    
    
    
    
    
    func requestDataWithPath(URLPath:String,method:RequestMethod,params:AnyObject?,complete:(responseData:NSData?,statusCode:Int?)->Void)
    {
        
        
        let path = URLPath.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())
        
        "request:==\(method.description)=======\(URLPath)=========".println()
        switch (method) {
        case RequestMethod.GET:
            self.GET(path!, parameters: params, success: { (operation, data) -> Void in
                "success response=======statusCode:\(operation.response?.statusCode)=====".println()
                
                complete(responseData: operation.responseData,statusCode: operation.response?.statusCode)
                }, failure: { (operation, NERROR) -> Void in
                    "failure response=======statusCode:\(operation.response?.statusCode)======".println()
                    
                    complete(responseData: operation.responseData,statusCode: operation.response?.statusCode)
                    
                    
            })
            break
            
        case RequestMethod.POST:
            self.POST(path!, parameters: params, success: { (operation, data) -> Void in
                "response=======statusCode:\(operation.response?.statusCode)=====".println()
                complete(responseData: operation.responseData,statusCode: operation.response?.statusCode)
                
                }, failure: { (operation, NERROR) -> Void in
                    "response=======statusCode:\(operation.response?.statusCode)=====".println()
                    complete(responseData: operation.responseData,statusCode: operation.response?.statusCode)
                    
            })
            break
        default:
            break;
        }  
    }
    
    
    
    func generateProgress(maskView:UIView? = nil,maskText:String? = nil) -> MBProgressHUD? {
        
        var hud:MBProgressHUD
        if maskView != nil {
            hud = MBProgressHUD.showHUDAddedTo(maskView, animated: true)
        }else{
            hud = MBProgressHUD.showHUDAddedTo(UIApplication.sharedApplication().keyWindow, animated: true)
        }
        hud.removeFromSuperViewOnHide = true
        
        hud.detailsLabelFont = UIFont.boldSystemFontOfSize(15.0)
        if maskText != nil {
            hud.labelText = maskText
        }else{
            hud.labelText = "请稍等..."
        }
        return hud
    }
    
    func getProtoWithPath<TResult:GeneratedMessageProtocol>(URLPath:String,params:AnyObject? = nil,showMask:Bool = false,maskView:UIView? = nil,maskText:String? = nil,complete:(protoResult:TResult?,statusCode:Int?)->Void)
    {
     
        var hud:MBProgressHUD?
        if showMask {
           hud = generateProgress(maskView, maskText: maskText)
        }
        let path = URLPath.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())
        "request:==GET=======\(URLPath)=========".println()
        hud?.show(true)
        self.GET(path!, parameters: params, success: { (operation, data) -> Void in
            "response success:==GET=====statusCode:\(operation.response?.statusCode)=====".println()
            hud?.hide(true)
            let statusCode = operation.response?.statusCode

            if let response = ResponseResult.parseFromData(operation.responseData!) {
                let result = TResult.parseFromData(operation.responseData!) as? TResult
                if response.code == 401 {
                    //"无权限".showTip()
                } else if response.code != 0 {
//                    response.message.showTip()
                }
//                if result?.data != nil {
//                    
//                }
                complete(protoResult: result!, statusCode: statusCode)
            }
            
            }, failure: { (operation, NERROR) -> Void in
                print("_______________\(NERROR)")
                "response failure:===GET====statusCode:\(operation.response?.statusCode)======".println()
                hud?.hide(true)
                if let httpCode = operation.response?.statusCode {
                    if httpCode == 401 {
//                        "登录信息已过期，请重新登录".showTip()
                    }else{
//                        "服务器遇到一些问题,请稍后再试 \(httpCode)".showTip()
                    }
                }else{
//                    "网络遇到一些问题,请重试".showTip()
                }
                complete(protoResult: nil, statusCode: operation.response?.statusCode)
        })
    }
    
    
    func postProtoWithPath<TResult:GeneratedMessageProtocol>(URLPath:String,data:NSData?,showMask:Bool = false,maskView:UIView? = nil,maskText:String? = nil,complete:(protoResult:TResult?,statusCode:Int?)->Void) {
        let path = URLPath.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLPathAllowedCharacterSet())
        
        "request:==POST=======\(URLPath)=========".println()
        
        var hud:MBProgressHUD?
        if showMask {
            hud = generateProgress(maskView, maskText: maskText)
        }
        let request = NSMutableURLRequest(URL: NSURL(string: BaseUrl + path!)!)
        
        for h in self.requestSerializer.HTTPRequestHeaders {
            request.setValue(h.1 as? String , forHTTPHeaderField: h.0 as! String)
            
        }
        request.HTTPBody = data
        request.HTTPMethod = "POST"
        hud?.show(true)
        self.HTTPRequestOperationWithRequest(request, success: { (operation, data) -> Void in
            "response success:==GET=====statusCode:\(operation.response?.statusCode)=====".println()
            hud?.hide(true)
            let statusCode = operation.response?.statusCode
            if let response = ResponseResult.parseFromData(operation.responseData!) {
                let result = TResult.parseFromData(operation.responseData!) as? TResult
                if response.code == 401 {
//                    "无权限".showTip()
                } else if response.code != 0 {
//                    response.message.showTip()
                }
                complete(protoResult: result!, statusCode: statusCode)
            }
            }, failure: { (operation, err) -> Void in
                "response failure:==GET=====statusCode:\(operation.response?.statusCode)======".println()
                hud?.hide(true)
                
                if let httpCode = operation.response?.statusCode {
//                    "服务器遇到一些问题,请稍后再试 \(httpCode)".showTip()
                }else{
//                    "网络遇到一些问题,请重试".showTip()
                }
                complete(protoResult: nil, statusCode: operation.response?.statusCode)

        }).start()
    }

    
    
    
    
    
    func requestDataWithPath(URLPath:String,method:RequestMethod,data:NSData?,complete:(responseData:NSData?,statusCode:Int?)->Void)
    {
        
        let path = URLPath.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLPathAllowedCharacterSet())
        
        "request:==\(method.description)=======\(URLPath)=========".println()
        
        let request = NSMutableURLRequest(URL: NSURL(string: BaseUrl + path!)!)
        
        for h in self.requestSerializer.HTTPRequestHeaders {
            request.setValue(h.1 as? String , forHTTPHeaderField: h.0 as! String)
            
        }
        request.HTTPBody = data
        request.HTTPMethod = method.description
        
        self.HTTPRequestOperationWithRequest(request, success: { (operation, data) -> Void in
            "response success:=======statusCode:\(operation.response?.statusCode)=====".println()
            complete(responseData: operation.responseData,statusCode: operation.response?.statusCode)
            }, failure: { (operation, err) -> Void in
                "response failure:=======statusCode:\(operation.response?.statusCode)=====".println()
                complete(responseData: operation.responseData,statusCode: operation.response?.statusCode)
        }).start()
    }
    
    
    
    
    
    
    
    func uploadImage(image:UIImage,complete:(AFHTTPRequestOperation)->Void) {
        
        var data = UIImageJPEGRepresentation(image, 1.0)
        
        if data!.length/1024 > 1000 {
            data = UIImageJPEGRepresentation(image, CGFloat(1024*1000/data!.length))
        }
        
        let request = NSMutableURLRequest(URL: NSURL(string: BaseUrl + "/api/v1/upload/pullimage")!)
        
        for h in self.requestSerializer.HTTPRequestHeaders {
            request.setValue(h.1 as? String , forHTTPHeaderField: h.0 as! String)
            
        }
        request.setValue("image/jpeg", forHTTPHeaderField: "Content-Type")
        request.HTTPBody = data
        request.HTTPMethod = "POST"
        self.HTTPRequestOperationWithRequest(request, success: { (operation, data) -> Void in
            "response=======statusCode:\(operation.response?.statusCode)=====".println()
            complete(operation)
            
            }, failure: { (operation, err) -> Void in
                "response=======statusCode:\(operation.response?.statusCode)=====".println()
                complete(operation)
        }).start()
        
    }
    
    
}
