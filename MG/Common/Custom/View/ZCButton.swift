//
//  CircularButton.swift
//  TemplateProject
//
//  Created by Lishuo on 16/5/19.
//  Copyright © 2016年 张豪. All rights reserved.
//

import UIKit

class ZCButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        //圆角的button的UI
        if(buttonStyle == ButtonStyle.circular){
            self.layer.cornerRadius = 5
            
            
            
            
        
        //扁平的button的UI
        }else if(buttonStyle == ButtonStyle.flat){
        
        
        
        //3d的button的UI
        }else if(buttonStyle == ButtonStyle.d){
        
        
        }
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
        
        
    }
    
    
    
}
