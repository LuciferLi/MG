//
//  UIView+Common.swift
//  TemplateProject
//
//  Created by cjp on 16/5/9.
//  Copyright © 2016年 张豪. All rights reserved.
//

import UIKit

enum EaseBlankPageType {
   case View
   case Activity
   case Task
   case Topic
   case Tweet
   case TweetOther
   case Project
   case ProjectOther
   case FileDleted
   case FolderDleted
   case PrivateMsg
   case MyWatchedTopic
   case MyJoinedTopic
   case OthersWatchedTopic
   case OthersJoinedTopic
   case FileTypeCannotSupport
   case ViewTips
   case ShopOrders
   case ShopSendOrders
   case ShopUnSendOrders
   case NoExchangeGoods
   case Project_ALL
   case Project_CREATE
   case Project_JOIN
   case Project_WATCHED
   case Project_STARED
   case Project_SEARCH
}

var LoadingViewKey = "LoadingViewKey"
var BlankPageViewKey = "BlankPageViewKey"

extension UIView{

    //MARK: - LoadingView
    var loadingView: EaseLoadingView?{
        get{
            return objc_getAssociatedObject(self, &LoadingViewKey) as? EaseLoadingView
        }
        set{
            let v = EaseLoadingView(frame: self.bounds)
            self.willChangeValueForKey("LoadingViewKey")
            objc_setAssociatedObject(self, &LoadingViewKey, v, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            self.didChangeValueForKey("LoadingViewKey")
        }
    }
    
    var blankPageContainer: UIView?{
        get{
            var blankPageContainer = self
            blankPageContainer.backgroundColor = self.backgroundColor
            for aView: UIView in self.subviews{
                if aView.isKindOfClass(UITableView.self){
                    blankPageContainer = aView
                }
            }
            
            return blankPageContainer
        }
    }
    
    func beginLoading(){
        if let _ = self.blankPageContainer{
            for aView: UIView in self.blankPageContainer!.subviews{
                if aView.isKindOfClass(EaseBlankPageView.self) && !aView.hidden{
                    return
                }
            }
        }
        
        if self.loadingView == nil{
            self.loadingView = EaseLoadingView(frame: self.bounds)
        }
        
        self.addSubview(self.loadingView!)
     
        
        self.loadingView!.snp_makeConstraints { (make) -> Void in
            make.edges.equalTo(self)
            make.center.equalTo(self)
        }

        if self.blankPageContainer!.isKindOfClass(UITableView.self){
            self.loadingView?.loopView.center.y = self.center.y - 30
            self.loadingView?.loopView.center.x = self.center.x
            
        }else{
            self.loadingView?.loopView.snp_makeConstraints { (make) -> Void in
                make.center.equalTo(self.loadingView!)
            }
        }
        
        self.loadingView?.startAnimating()
    }
    
    func endLoading(){
        if let _ = self.loadingView{
            self.loadingView?.stopAnimating()
        }
    }
    
   //MARK: - BlankPageView
    var blankPageView: EaseBlankPageView?{
        get{
            return objc_getAssociatedObject(self, &BlankPageViewKey) as? EaseBlankPageView
        }
        set{
            let v = EaseBlankPageView(frame: self.bounds)
       
            self.willChangeValueForKey("BlankPageViewKey")
            objc_setAssociatedObject(self, &BlankPageViewKey, v, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            self.didChangeValueForKey("BlankPageViewKey")
        }
    }

    func configBlankPage(blankPageType: EaseBlankPageType, hasData: Bool, hasError: Bool, reloadBtnBlock: ((sender: AnyObject) -> Void)?){
        
        self.endLoading()
        
       // 1、 有数据
        if hasData{
            
            if self.blankPageView == nil{
                self.blankPageView = EaseBlankPageView(frame: self.bounds)
            }
          
            if !hasError{  // (1) 有数据 没错，
                
                self.blankPageView?.hidden = true
                self.blankPageView?.removeFromSuperview()
                
            }else{ // (2) 有数据 有错
                // 弹窗提示 错误信息

                "报错了".showHudTipStr()
            }
        }else{ // 2、（1) 没有数据 没错 视图展示 未获取到数据, (2) 没有数据有错  视图展示 提示处理
            if self.blankPageView == nil{
                let v = EaseBlankPageView(frame: self.bounds)
                self.blankPageView = v
            }

            blankPageView?.hidden = false
            
            self.blankPageContainer!.addSubview(blankPageView!)
            self.blankPageView?.configWithType(blankPageType, hasData: hasData, hasError: hasError, reloadBtnBlock: reloadBtnBlock)
        }
    }
}


class EaseLoadingView: UIView{
    
    var loopAngle: CGFloat = 0
    var angleStep: CGFloat = 0
    var alphaStep: CGFloat = 0
    
    var loopView: UIImageView!
    var isLoading: Bool = false
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.clearColor()
        
        loopView = UIImageView(image: UIImage(named: "loading_loop"))
        
        self.addSubview(loopView)

        loopAngle = 0.0
        angleStep = 360 / 3
        alphaStep = 1.0 / 3.0
    }
    
    func startAnimating(){
        self.hidden = false
        if isLoading {
            return
        }
        
        isLoading = true
        self.loadingAnimation()
    }
    
    func stopAnimating(){
        self.hidden = true
        isLoading = false
    }
    
    func loadingAnimation(){
        loopAngle += angleStep

        UIView.animateWithDuration(2.5, animations: { () -> Void in
          
             let loopAngleTransform: CGAffineTransform = CGAffineTransformMakeRotation(self.loopAngle * (CGFloat)(M_PI / 180.0))
            
              self.loopView.transform = loopAngleTransform
            }, completion: { (finished) -> Void in
                
                if self.isLoading && self.superview != nil{
                    self.loadingAnimation()
                }else{
                    self.removeFromSuperview()
                    self.loopAngle = 0.0
                    self.alphaStep = abs(self.alphaStep)
                    
                    let loopAngleTransform: CGAffineTransform = CGAffineTransformMakeRotation(self.loopAngle * (CGFloat)(M_PI / 180.0));
                    self.loopView.transform = loopAngleTransform;
                }
             })
    }
}


class EaseBlankPageView: UIView{
    lazy var monkeyView: UIImageView = {
        let v = UIImageView(frame: CGRectZero)
        return v
    }()
    
    lazy var tipLabel: UILabel = {
       let l = UILabel(frame: CGRectZero)
        l.backgroundColor = UIColor.clearColor()
        l.numberOfLines = 0
        l.font = UIFont.systemFontOfSize(15)
        l.textColor = UIColor.grayColor()
        l.textAlignment = NSTextAlignment.Center
        
        return l
    }()
    
    var reloadButton: UIButton?
    var curType: EaseBlankPageType = .View

    
    var reloadButtonBlock: ((sender: AnyObject) -> Void)?
    
    var loadAndShowStatusBlock: (() -> Void)?
    
    var clickButtonBlock: ((curType: EaseBlankPageType) -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.clearColor()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configWithType(blankPageType: EaseBlankPageType, hasData: Bool, hasError: Bool, reloadBtnBlock: ((sender: AnyObject) -> Void)?){
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(0.2 * Double(NSEC_PER_SEC))), dispatch_get_main_queue()) { () -> Void in
            if let _ = self.loadAndShowStatusBlock {
                self.loadAndShowStatusBlock!()
            }
        }
        
        // ------------- 1、有数据 -------------
        if hasData{
            if !hasError{ // (1) 有数据 没错，移除提示层
                self.removeFromSuperview()
            }
            
            return
        }
        
       // ------------- 2、没有数据 -------------
       
        // @ 1 -> 没数据
        self.alpha = 1.0
        
        // 添加子控件
        self.addSubview(self.monkeyView)
        self.addSubview(self.tipLabel)
        
        // 布局子控件
        self.monkeyView.snp_makeConstraints { (make) -> Void in
            make.centerX.equalTo(self)
            make.bottom.equalTo(self.snp_centerY)
        }
        
        self.tipLabel.snp_makeConstraints { (make) -> Void in
            make.centerX.equalTo(self)
            make.top.equalTo(self.monkeyView.snp_bottom)
            make.height.equalTo(50)
        }
        
        reloadButton = nil
        
        // @ 2 -> 有错
        if hasError{  // 加载失败
            self.loadingView?.endLoading()
            if reloadButton == nil{
                reloadButton = UIButton(frame: CGRectZero)
                reloadButton?.setImage(UIImage(named: "blankpage_button_reload"), forState: .Normal)
                reloadButton?.adjustsImageWhenHighlighted = true
                reloadButton?.addTarget(self, action: #selector(EaseBlankPageView.reloadButtonClicked(_:)), forControlEvents: .TouchUpInside)
                self.addSubview(reloadButton!)
                
                reloadButton!.snp_makeConstraints { (make) -> Void in
                    make.centerX.equalTo(self)
                    make.top.equalTo(self.tipLabel.snp_bottom)
                    make.size.equalTo(CGSizeMake(160, 60))
                }
            }
            
            reloadButton?.hidden = false
            reloadButtonBlock = reloadBtnBlock
            
            monkeyView.image = UIImage(named: "blankpage_image_loadFail")
            tipLabel.text = "貌似出了点差错\n真忧伤呢"
        }else{
            
            // @3 -> 空白数据
            if let _ = reloadButton{
                reloadButton?.hidden = true
            }
            
            var imgName: String
            var tipStr: String
            switch (blankPageType){
                case .Activity:
                    imgName = "blankpage_image_Sleep"
                    tipStr = "项目这里还什么都没有\n赶快起来弄出一点动静吧"
                    break
                    
                case .Task:
                    imgName = "blankpage_image_Sleep"
                    tipStr = "这里还没有任务\n赶快起来为团队做点贡献吧"
                    break
               
                case .Project_SEARCH:
                    imgName = "blankpage_image_Hi"
                    tipStr = "什么都木有搜到，换个词再试试？"
                    break
                    
                default: //其它页面（这里没有提到的页面，都属于其它）
                    imgName = "blankpage_image_Sleep";
                    tipStr = "这里还什么都没有\n赶快起来弄出一点动静吧";
                    break
            }
            
            monkeyView.image = UIImage(named: imgName)
            tipLabel.text = tipStr
        }
        

    }
    
    func reloadButtonClicked(sender: AnyObject){
        
        self.hidden = true
        self.removeFromSuperview()
  
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(0.2 * Double(NSEC_PER_SEC))), dispatch_get_main_queue()) { () -> Void in
            if let _ = self.reloadButtonBlock {
               self.reloadButtonBlock!(sender: sender)
            }
        }
    }
}
